import React, { useEffect, useState } from 'react'
import $ from 'jquery'
import 'jquery-ui/ui/widgets/draggable'
import 'jquery-ui/ui/widgets/droppable'
import {Animated} from 'react-animated-css'
import { Textfit } from 'react-textfit';
import { toast } from 'react-toastify';
import { useInventory } from './App.jsx';

export default function Inventory({type, title, weight, items}) {
    const {sound, locales, clickSound, moveSound, setLock, lock, selectItem, counter, otherInventory, resName} = useInventory()

    // Droppable Area
    const dropRef = React.useRef()
    useEffect(() => {
        $(dropRef.current).droppable({
            hoverClass: 'hovering',
            drop: (e, ui) => {
                const item = ui.draggable.data('item');

                if (item.inventory === 'hotbar') return;

                ui.helper.data('dropped', true);

                if (counter.current.value < 1) return;
                if (otherInventory && !otherInventory.items) return;
                if (type === item.inventory) return;
                if (item.inventory === 'main' && !item.remove) return;
                if (type === 'shop') return;
                if (lock) return;
                
                if (sound) {
                    moveSound.pause()
                    moveSound.currentTime = 0;
                    moveSound.play()
                }
                
                if (type === 'main') {
                    setLock(true)
                    $.post(`https://${resName}/MoveItemToPlayer`, JSON.stringify({
                        item: item,
                        count: parseInt(counter.current.value)
                    }), () => {
                        setLock(false)
                    })
                } else {
                    setLock(true)
                    $.post(`https://${resName}/MoveItemToOther`, JSON.stringify({
                        item: item,
                        count: parseInt(counter.current.value)
                    }), () => {
                        setLock(false)
                    })
                }
            }
        })
    }, [lock, otherInventory])

    // Draggable Item
    useEffect(() => {
        $('.item-img').draggable({
            appendTo: 'body',
            helper: 'clone',
            containment: 'body',
            zIndex: 100,
            delay: 75,
            cursorAt: { left: 70, top:90 },
            start: function(e, ui) {    
                selectItem(null)
                ui.helper.data('dropped', false);
            },
            stop: function(e, ui) {
                var item = $(this).data('item')

                if (lock) return;

                if (!ui.helper.data('dropped')) {
                    if (item.inventory === 'main') {
                        if (counter.current.value < 1) return;

                        if (sound) {
                            clickSound.pause()
                            clickSound.currentTime = 0;
                            clickSound.play()
                        }

                        setLock(true)
                        $.post(`https://${resName}/RemoveItem`, JSON.stringify({
                            item: item,
                            count: parseInt(counter.current.value)
                        }), () => {
                            setLock(false)
                        })
                    } else if (item.inventory === 'hotbar') {
                        if (sound) {
                            clickSound.pause()
                            clickSound.currentTime = 0;
                            clickSound.play()
                        }

                        $.post(`https://${resName}/RemoveItemFromHotbar`, JSON.stringify({
                            slot: item.slot
                        }))
                    }
                }
            }
        })
    }, [lock, items])

    return (
        <div className='inventory' id='inv'>
            <h1 className='title' dangerouslySetInnerHTML={{__html: title}} />
            <div className="weight" style={{display: weight ? 'flex' : 'none'}}>
                <div className='pill'>{weight && weight.current !== undefined ? (
                    <Animated animationIn="zoomIn" animationInDuration={250}>
                        <span>{weight.current}/{weight.max}</span>
                    </Animated>
                ) : <div className='loader' />}</div>
                <div className="outer">
                    <div className="inner" style={{width: weight && (weight.current / weight.max) * 100 + '%'}} />
                </div>
            </div>
            <div className="items" ref={dropRef}>
                {items ? (
                    items.length > 0 ? (
                        items.map((item, index) => (
                            <Animated key={index} animationIn="zoomIn" animationOut='fadeOut' animationOutDuration={250} animationInDuration={250}>
                                <Item inventory={type} item={item} index={index} />
                            </Animated>
                        ))
                    ) : (
                        <Animated className='no-items' animationIn="zoomIn" animationOut='fadeOut' animationInDuration={250} animationOutDuration={250}>
                            <span>{locales.NoItemsFound}</span>
                        </Animated>
                    )
                ) : (
                    <div className="loader" />
                )}
            </div>
        </div>
    )
}

function Item({inventory, item, index}) {
    const {middleClickUse, locales, sound, clickSound, moveSound, selectedItem, selectItem, setLock, lock, otherInventory, resName} = useInventory()

    const itemRef = React.useRef()

    useEffect(() => {
        window.addEventListener("mouseup", (e) => {
            if (!e.target.closest('#actions')) {
                selectItem(null)
                return;
            }
        });
    }, [])

    useEffect(() => {
        $(itemRef.current).removeData('item');
        $(itemRef.current).data('item', {inventory, index, ...item});
    }, [inventory, item])

    function numberWithCommas(x) {
        return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }

    const onRightClick = (e, item, otherInv, locked) => {
        e.preventDefault()

        if (!otherInv) return;
        if (!otherInv.items) return;
        if (item.inventory === 'main' && !item.remove) return;
        if (item.inventory === 'shop' || otherInv.type === 'shop') return;
        if (locked) return;

        if (sound) {
            moveSound.pause()
            moveSound.currentTime = 0;
            moveSound.play()
        }

        if (item.inventory !== 'main') {
            setLock(true)
            $.post(`https://${resName}/MoveItemToPlayer`, JSON.stringify({
                item: item,
                count: item.count
            }), () => {
                setLock(false)
            })
        } else {
            setLock(true)
            $.post(`https://${resName}/MoveItemToOther`, JSON.stringify({
                item: item,
                count: item.count
            }), () => {
                setLock(false)
            })
        }
    }

    const handleClick = (item) => {
        if (item.inventory === 'main') {
            if (sound) {
                clickSound.pause()
                clickSound.currentTime = 0;
                clickSound.play()
            }
            selectItem(item)
        }
    }

    const handleMiddleClick = (e) => {
        if (!middleClickUse) return;

        if (e.button === 1) {  
            if (inventory === 'main') {
                if (item.use) {
                    $.post(`https://${resName}/UseItem`, JSON.stringify({
                        item: item
                    }))
                } else {
                    toast("Item is not usable", {type: 'error'})
                }
            }
        }
    }

    return item && (
        <div 
        className={`item ${inventory === "main" && selectedItem && selectedItem.name === item.name && 'selected'}`} 
        onClick={() => handleClick({inventory, index, ...item})} 
        onContextMenu={(e) => onRightClick(e, {inventory, index, ...item}, otherInventory, lock)}
        onMouseDown={(e) => handleMiddleClick(e)}
        >
            <div className="item-count" style={{width: '100%', textAlign: 'center'}}>
                <Textfit mode='single' max={16}>
                    {inventory === 'shop' || item.type === 'item_account' ? (
                        <span><span style={{color: 'lightgreen', fontWeight: 'bold'}}>{locales.Currency}</span> {numberWithCommas(item.count)}</span>
                    ) : (
                        item.type === 'item_weapon' ? (
                            <span><i className="fas fa-angle-double-up"></i> {numberWithCommas(item.count)}</span>
                        ) : (
                            <span>{numberWithCommas(item.count)}</span>
                        )
                    )}
                </Textfit>
            </div>
            <div className="item-img" ref={itemRef} style={{backgroundImage: `url(../assets/icons/${item.name}.png)`}} />
            <div className="item-name" style={{width: '100%', textAlign: 'center'}}><Textfit mode='single' max={16}>{item.label}</Textfit></div>
        </div>
    )
}