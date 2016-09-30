package dragonBones.events;

/**
* Copyright 2012-2013. DragonBones. All Rights Reserved.
* @playerversion Flash 10.0, Flash 10
* @langversion 3.0
* @version 2.0
*/
import dragonBones.Armature;
import dragonBones.Bone;
import dragonBones.animation.AnimationState;

import flash.events.Event;

/**
 * The FrameEvent class provides and defines all events dispatched by an Animation or Bone instance entering a new frame.
 *
 *
 * @see dragonBones.animation.Animation
 */
class FrameEvent extends Event
{
    public static var MOVEMENT_FRAME_EVENT(get, null):String;
	public static function get_MOVEMENT_FRAME_EVENT():String
	{
		return  ANIMATION_FRAME_EVENT;
	}

	/**
	 * Dispatched when the animation of the armatrue enter a frame.
	 */
	public static var ANIMATION_FRAME_EVENT:String = "animationFrameEvent";

	/**
	 *
	 */
	public static var BONE_FRAME_EVENT:String ="boneFrameEvent";

	/**
	 * The entered frame label.
	 */
	public var frameLabel:String;

	public var bone:Bone;

	/**
	 * The armature that is the target of this event.
	 */
    public var armature(get, null):Armature;
	public function get_armature():Armature
	{
		//return target as Armature;
		return target;
	}

	/**
	 * The animationState instance.
	 */
	public var animationState:AnimationState;

	/**
	 * Creates a new FrameEvent instance.
	 * @param type
	 * @param cancelable
	 */
	public function new(type:String, cancelable:Bool = false)
	{
		super(type, false, cancelable);
	}

	/**
	 * @private
	 *
	 * @return An exact duplicate of the current object.
	 */
	override public function clone():Event
	{
		var event:FrameEvent = new FrameEvent(type, cancelable);
		event.animationState = animationState;
		event.bone = bone;
		event.frameLabel = frameLabel;
		return event;
	}
}
