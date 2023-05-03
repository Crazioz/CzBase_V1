import React, { useState, useEffect } from 'react'
import { post } from 'jquery';
import {Animated} from 'react-animated-css'
import { Textfit } from 'react-textfit';
import { useInventory } from './App.jsx';

export default function Actions({selectItem, selectedItem, players, counter, lastValue}) {
    const {sound, locales, clickSound, resName, setPlayers} = useInventory()
    const [playerMenu, setPlayerMenu] = useState(false)

    useEffect(() => {
        if (playerMenu) {
            if (selectedItem) {
                setPlayerMenu(true)
            } else {
                setPlayerMenu(false)
            }
        }
    }, [selectedItem])

    const give = (src) => {
        if (counter.current.value < 1) return;

        if (sound) {
            clickSound.pause()
            clickSound.currentTime = 0;
            clickSound.play()
        }

        setPlayerMenu(false)

        post(`https://${resName}/GiveItem`, JSON.stringify({
            src: src,
            item: selectedItem,
            count: counter.current.value
        }))

        selectItem(null)
    }

    const use = () => {
        if (sound) {
            clickSound.pause()
            clickSound.currentTime = 0;
            clickSound.play()
        }

        setPlayerMenu(false)

        post(`https://${resName}/UseItem`, JSON.stringify({
            item: selectedItem
        }))

        selectItem(null)
    }

    const handleOpenMenu = () => {
        if (sound) {
            clickSound.pause()
            clickSound.currentTime = 0;
            clickSound.play()
        }
        
        post(`https://${resName}/GetPlayers`, (data) => {
            setPlayers(data)
            setPlayerMenu(!playerMenu)
        })
    }

    return (
        <div className='actions' id='actions'>
            <button id='use' onClick={() => use()} disabled={selectedItem && selectedItem.use ? false : true}><Textfit mode='single' max={22}><i className="fas fa-mouse-pointer"></i> {locales.Use}</Textfit></button>
            <div id='giveArea'>
                <button id='give' onClick={() => handleOpenMenu()} disabled={selectedItem && selectedItem.remove ? false : true}><Textfit mode='single' max={22}><i className="fas fa-gift"></i> {locales.Give}</Textfit></button>
                <PlayerMenu toggle={playerMenu} giveItem={give} players={players} />
            </div>
            <input type="number" pattern="[1-100]" ref={counter} min={1} defaultValue={lastValue} />
        </div>
    )
}

function PlayerMenu({toggle, giveItem, players}) {
    const {locales} = useInventory()

    function Player({src, name}) {
        return (
            <div className="player" onClick={() => giveItem(src)}><Textfit mode='single' max={20}>{name}</Textfit></div>
        )
    }

    return (
        <Animated isVisible={toggle} className='playerMenu' animationIn='zoomIn' animationOut='zoomOut' animationInDuration={250} animationOutDuration={250} >
            <div className='players'>
                {players.length > 0 ? (
                    players.map((player, index) => (
                        <Player key={index} src={player.src} name={player.name}  />
                    ))
                ) : (
                    <span className='no-players'>{locales.NoPlayersFound}</span>
                )}
            </div>
        </Animated>
    )
}