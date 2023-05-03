import React, { useEffect, useState } from 'react'
import $, {post} from 'jquery'
import { ToastContainer, Flip, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import {CSSTransition} from 'react-transition-group'
import {Animated} from 'react-animated-css'
import Inventory from './Inventory.jsx'
import Actions from './Actions.jsx'
import Hotbar from './Hotbar.jsx';

const InventoryContext = React.createContext()

export function useInventory() {
    return React.useContext(InventoryContext)
}

export default function App() {
    const [open, setOpen] = useState(false)

    // Data
    const [inventory, setInventory] = useState(null)
    const [otherInventory, setOtherInventory] = useState(null)
    const [hotbar, setHotbar] = useState(null)
    const [hotbarTab, setHotbarTab] = useState(false)
    const [players, setPlayers] = useState(null)
    const [sound, setSound] = useState(true)
    const counter = React.useRef()
    const [lastValue, setLastValue] = useState(1)
    const [selectedItem, selectItem] = useState(null)
    const [lock, setLock] = useState(false)
    const [resName, setResName] = useState('inventory')
    const [clickOutside, setClickOutside] = useState(false)
    const [middleClickUse, setMiddleClickUse] = useState(false)
    const [locales, setLocales] = useState({
        Currency: "$",
        NoItemsFound: "😢 No Item's Found",
        Give: "Give",
        Use: "Use",
        NoPlayersFound: "😢 No Player's Found"
    })

    var timer = null

    // sounds
    const clickSound = document.createElement('audio')
    clickSound.src = '../assets/sounds/click.wav'
    clickSound.volume = .1

    const moveSound = document.createElement('audio')
    moveSound.src = '../assets/sounds/move.wav'
    moveSound.volume = .1

    const onLaunch = (e) => {
        var data = e.data
        switch (data.action) {
            case 'open':
                setLock(false)
                selectItem(null)
                setPlayers(data.players)
                setHotbar(data.hotbar)
                setHotbarTab(false)
                setSound(data.sound)
                setResName(data.invName)
                setLocales(data.locales)
                setClickOutside(data.clickOutside)
                setMiddleClickUse(data.middleClickUse)
                setInventory(data.inventory)
                setOtherInventory(data.otherInventory)
                setOpen(true)
                break;
            case 'setItems':
                setHotbar(data.hotbar)
                setInventory(inv => ({...inv, items: data.items, weight: data.weight}))
                break;
            case 'setOtherItems':
                setOtherInventory(inv => ({...inv, items: data.items, weight: data.weight}))
                break;
            case 'showHotbar':
                clearTimeout(timer)
                setHotbarTab(data.hotbar)
                timer = setTimeout(() => {
                    $('.hotbar-wrapper').fadeOut(250, () => {
                        post(`https://${data.invName}/UnlockHotbar`)
                        setHotbarTab(false)
                    })
                }, data.timeout)
                break;
            case 'close':
                CloseInventory(data.invName)
                break;
            case 'notify':
                toast((<span dangerouslySetInnerHTML={{__html: data.msg}} />), {type: data.type})
                break;
        }
    }

    const onMouseDown = (e) => {
        if (e.button === 0) {
            if (!e.target.closest('#actions')  && !e.target.closest('#inv') && !e.target.closest('#hotbar')) {
                if (clickOutside) {
                    CloseInventory(resName)
                }
                return;
            }
        }
    }

    const onKeyUp = (e) => {
        if (e.key === "Escape") {
            CloseInventory(resName)
        }
    }

    const CloseInventory = (name) => {
        if (counter.current) setLastValue(counter.current.value)
        post(`https://${name}/close`)
        setOpen(false)
    }

    useEffect(() => {
        window.addEventListener('message', onLaunch)
        return () => {
            window.removeEventListener('message', onLaunch);
        };
    }, [])

    useEffect(() => {
        window.addEventListener('keyup', onKeyUp)
        window.addEventListener('mousedown', onMouseDown)
        return () => {
            window.removeEventListener('keyup', onKeyUp)
            window.removeEventListener('mousedown', onMouseDown)
        };
    }, [resName, clickOutside])

    return (
        <InventoryContext.Provider value={{setPlayers, locales, middleClickUse, sound, resName, clickSound, moveSound, setLock, lock, selectedItem, selectItem, counter, otherInventory}}>
            <CSSTransition in={open} timeout={200} classNames="app" unmountOnExit>
                <div className='app'>
                    <Actions players={players} selectItem={selectItem} selectedItem={selectedItem} counter={counter} lastValue={lastValue} />
                    <div style={{display: 'flex', alignItems: 'center', justifyContent: 'center'}}>
                        {inventory && <Inventory type={inventory.type} title={inventory.title} weight={inventory.weight} items={inventory.items}  />}
                        {otherInventory && (
                            <>
                                <div className="spacer" />
                                <Inventory type={otherInventory.type} title={otherInventory.title} weight={otherInventory.weight} items={otherInventory.items} />
                            </>
                        )}
                    </div>
                    {hotbar && (
                        <Hotbar toggle={true} slotCount={hotbar.slotCount} items={hotbar.items} />
                    )}
                </div>
            </CSSTransition>
            <ToastContainer pauseOnFocusLoss={false} closeButton={false} newestOnTop pauseOnHover={false} transition={Flip} limit={otherInventory ? 4 : 8} />
            {hotbarTab && (
                <Animated animationIn='fadeIn' animationInDuration={250}>
                    <div className='hotbar-wrapper'>
                        <Hotbar slotCount={hotbarTab.slotCount} items={hotbarTab.items} />
                    </div>
                </Animated>
            )}
        </InventoryContext.Provider>
    )
}
