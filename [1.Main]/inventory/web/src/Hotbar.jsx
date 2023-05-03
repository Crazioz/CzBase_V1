import React, {useEffect, useState} from 'react'
import $ from 'jquery'
import { Textfit } from 'react-textfit'
import { Animated } from 'react-animated-css'
import { useInventory } from './App.jsx'

export default function Hotbar({slotCount, items}) {
    var [slots, setSlots] = useState([])

    useEffect(() => {
        setSlots([])
        for (let i = 0; i < slotCount; i++) {
            setSlots(nSlots => [...nSlots, i])
        }  
    }, [slotCount])

    return (
        <div className='hotbar' id='hotbar'>
            {slots.map(slot => (
                items ? (
                    <Slot key={slot} slot={slot} item={items[slot]} />
                ) : (
                    <Slot key={slot} slot={slot} item={null} />
                )
            ))}
        </div>
    )
}

function Slot({slot, item}) {
    const {sound, moveSound, clickSound, resName} = useInventory()

    const itemRef = React.useRef()
    const dropRef = React.useRef()

    useEffect(() => {
        $(itemRef.current).removeData('item');
        $(itemRef.current).data('item', {inventory: 'hotbar', slot: slot, ...item});

        $(dropRef.current).droppable({
            hoverClass: 'hovering-slot',
            drop: (e, ui) => {
                ui.helper.data('dropped', true);
                if (["hotbar", "main"].indexOf(ui.draggable.data('item').inventory) === -1) return;
                if (ui.draggable.data('item').type === 'item_account') return;
                if (ui.draggable.data('item').inventory === 'main' && item) return;
                if (ui.draggable.data('item').inventory === 'hotbar') {
                    if (ui.draggable.data('item').slot === slot) return
                }

                if (sound) {
                    moveSound.pause()
                    moveSound.currentTime = 0;
                    moveSound.play()
                }

                $.post(`https://${resName}/AddItemToHotbar`, JSON.stringify({
                    slot: slot,
                    item: ui.draggable.data('item')
                }))
            }
        })
    }, [item])

    const onRightClick = (e, item, s) => {
        e.preventDefault()

        if (!item) return;

        if (sound) {
            clickSound.pause()
            clickSound.currentTime = 0;
            clickSound.play()
        }

        $.post(`https://${resName}/RemoveItemFromHotbar`, JSON.stringify({
            slot: s
        }))
    }

    return (
        <div className='slot' onContextMenu={(e) => onRightClick(e, item, slot)} ref={dropRef} style={{opacity: item ? '1' : '.35'}}>
            {item && (
                <Animated animationIn="zoomIn" className='item' animationOut='fadeOut' animationOutDuration={250} animationInDuration={250}>
                    <div />
                    <div className="item-img" ref={itemRef} style={{backgroundImage: `url(../assets/icons/${item.name}.png)`}} />
                    <div className="item-name" style={{width: '100%', textAlign: 'center'}}><Textfit mode='single' max={16}>{item.label}</Textfit></div>
                </Animated>
            )}
        </div>
    )
}