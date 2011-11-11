.class public Lcom/android/camera/HTCCamera;
.super Landroid/app/Activity;
.source "HTCCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/HTCCamera$MainHandler;,
        Lcom/android/camera/HTCCamera$CaptureCategory;
    }
.end annotation


# static fields
.field public static final ACTION_ORIENTATION_LIGHT:Ljava/lang/String; = "com.htc.content.intent.action.ORIENTATION_LIGHT"

.field public static final ACTION_SCREEN_FADEOUT:I = 0x27

.field public static final AUTO_SMILE_CAPTURE:I = 0x53

.field private static final BEEP_NO_SOUND:I = -0x1

.field private static final BEEP_TIME:I = 0xc8

.field public static final CAMERA_THREAD_RUNNING:I = 0x66

.field public static final CANCEL_FOCUS_END:I = 0x1d

.field private static final CAPTURE_BEEP_COUNT:I = 0x5

.field public static final CHANGE_INDICATOR_LAYOUT:I = 0xb

.field public static final CHECK_FACE_DETECTION:I = 0x23

.field public static final CHECK_SCENE_CHANGE:I = 0x20

.field public static final CLEAN_FACE_FOCUS:I = 0x36

.field public static final CLOSE_CAPTURE_UI:I = 0x10

.field public static final CLOSE_EXTENSION_MENUS:I = 0x64

.field public static final CLOSE_SELF_TIMER:I = 0x46

.field public static final COUNT_DOWN_SELFTIMER:I = 0x5

.field public static final DOT_SCENE_ACTION:I = 0x6

.field public static final DOT_SCENE_AUTO:I = 0x0

.field public static final DOT_SCENE_BURST:I = 0x4

.field public static final DOT_SCENE_HAPPYSHOT:I = 0x1

.field public static final DOT_SCENE_HDR:I = 0x3

.field public static final DOT_SCENE_MACRO:I = 0x7

.field public static final DOT_SCENE_MANUAL:I = 0x9

.field public static final DOT_SCENE_NIGHT:I = 0x5

.field public static final DOT_SCENE_PANORAMA:I = 0x2

.field public static final DOT_SCENE_PORTRAIT:I = 0x8

.field public static final DO_CREATE_AFTER_PREVIEW:I = 0x2e

.field public static final DO_CREATE_RESUME_AFTER_PREVIEW:I = 0x2d

.field public static final DO_RESUME_AFTER_PREVIEW:I = 0x2f

.field public static final EFFECT_CONTROL_TIMEOUT:I = 0x1388

.field public static final EFFECT_PANEL_FADEOUT:I = 0x3b

.field public static final EFFECT_SWITCH_CAMERA:I = 0x43

.field public static final ENABLE_GARBAGE_COLLECTION:I = 0x38

.field public static final ENABLE_SENSOR_FOCUS:I = 0x1e

.field public static final EVENT_ACTION_SCREEN_CLOSED:Ljava/lang/String; = "ActionScreen.Closed"

.field public static final EVENT_ACTION_SCREEN_CLOSING:Ljava/lang/String; = "ActionScreen.Closing"

.field public static final EVENT_ACTION_SCREEN_OPEN:Ljava/lang/String; = "ActionScreen.Open"

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_CAMERA_THREAD_RUNNING:Ljava/lang/String; = "CameraActivity.CameraThreadRunning"

.field public static final EVENT_CAPTURE_UI_CLOSED:Ljava/lang/String; = "CaptureUI.Closed"

.field public static final EVENT_CAPTURE_UI_OPEN:Ljava/lang/String; = "CaptureUI.Open"

.field public static final EVENT_CAPTURE_UI_UNBLOCK:Ljava/lang/String; = "CaptureUI.Unblock"

.field public static final EVENT_DEVICE_ORIENTATION_CHANGED:Ljava/lang/String; = "DeviceOrientation.Changed"

.field public static final EVENT_EFFECT_PANEL_CLOSED:Ljava/lang/String; = "EffectPanel.Closed"

.field public static final EVENT_EFFECT_PANEL_OPENING:Ljava/lang/String; = "EffectPanel.Opening"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_KEY_DOWN:Ljava/lang/String; = "Key.Down"

.field public static final EVENT_KEY_UP:Ljava/lang/String; = "Key.Up"

.field public static final EVENT_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "MediaScanner.Finished"

.field public static final EVENT_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "MediaScanner.Started"

.field public static final EVENT_MENU_CLOSED:Ljava/lang/String; = "Menu.Closed"

.field public static final EVENT_MENU_OPENING:Ljava/lang/String; = "Menu.Opening"

.field public static final EVENT_NEW_INTENT:Ljava/lang/String; = "CameraActivity.NewIntent"

.field public static final EVENT_PAUSING:Ljava/lang/String; = "CameraActivity.Pausing"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "CameraActivity.PreviewStarted"

.field public static final EVENT_PROTRAIT_MODE_CHANGED:Ljava/lang/String; = "PortraitMode.Changed"

.field public static final EVENT_QUERY_CONFIRM_DELETING_MEDIA_MESSAGE:Ljava/lang/String; = "Query.ConfirmDeletingMediaMessage"

.field public static final EVENT_QUERY_IS_ZOOM_LOCK_NEEDED:Ljava/lang/String; = "Query.IsZoomLockNeeded"

.field public static final EVENT_RECORD_WITH_AUDIO_CHANGED:Ljava/lang/String; = "RecordWithAudio.Changed"

.field public static final EVENT_REMAINING_HIDE_ANIMATION_END:Ljava/lang/String; = "RemainingLayout.HideEnd"

.field public static final EVENT_REMAINING_SHOW_ANIMATION_START:Ljava/lang/String; = "RemainingLayout.ShowStart"

.field public static final EVENT_REMOVABLE_STORAGE_EJECTED:Ljava/lang/String; = "RemovableStorage.Ejected"

.field public static final EVENT_REMOVABLE_STORAGE_MOUNTED:Ljava/lang/String; = "RemovableStorage.Mounted"

.field public static final EVENT_REMOVABLE_STORAGE_UNMOUNTED:Ljava/lang/String; = "RemovableStorage.Unmounted"

.field public static final EVENT_REQUEST_RESET_TO_DEFAULT:Ljava/lang/String; = "Request.ResetToDefault"

.field public static final EVENT_RESTART_CAMERA:Ljava/lang/String; = "Camera.Restart"

.field public static final EVENT_RESUMING:Ljava/lang/String; = "CameraActivity.Resuming"

.field public static final EVENT_ROTATION_CHANGED:Ljava/lang/String; = "CameraActivity.RotateChanged"

.field public static final EVENT_SECOND_LAYOUT_CLOSE:Ljava/lang/String; = "SecondLayout.Closed"

.field public static final EVENT_SECOND_LAYOUT_OPEN:Ljava/lang/String; = "SecondLayout.Opened"

.field public static final EVENT_SELF_TIMER_CHANGED:Ljava/lang/String; = "SelfTimer.Changed"

.field public static final EVENT_SENSOR_VALUE_CHANGED:Ljava/lang/String; = "SensorValue.RotateChanged"

.field public static final EVENT_SWITCH_3D_MODE:Ljava/lang/String; = "3DMode.Switched"

.field public static final EVENT_SWITCH_MODE:Ljava/lang/String; = "Mode.Switched"

.field public static final EVENT_THUMBNAIL_BUTTON_CLICKED:Ljava/lang/String; = "ThumbnailButton.Clicked"

.field public static final EVENT_TRIGGER_RECORD_STARTED:Ljava/lang/String; = "TriggerRecord.Started"

.field public static final EVENT_TRIGGER_RECORD_STOPPED:Ljava/lang/String; = "TriggerRecord.Stopped"

.field public static final EVENT_VOL_DECREASE_ZOOM:Ljava/lang/String; = "Zoom.Decreased"

.field public static final EVENT_VOL_INCREASE_ZOOM:Ljava/lang/String; = "Zoom.Increased"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_LOCKED_CHANGED:Ljava/lang/String; = "Zoom.LockedStateChanged"

.field public static final EXTENSION_MENU_TIMEOUT:I = 0xfa0

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final FADEOUT_SCENE_HDR:I = 0x55

.field public static final FADEOUT_SCENE_LANDSCAPE:I = 0x4c

.field public static final FADEOUT_SCENE_PORTRAIT:I = 0x4a

.field public static final FADEOUT_SCENE_SUN_NIGHT:I = 0x4b

.field public static final FINISH_FOCUS:I = 0x1c

.field public static final FOCUSING_NO_ACTION:I = 0x1

.field public static final FOCUSING_PRESS_CAPTURE:I = 0x3

.field public static final FOCUSING_PRESS_RECORD:I = 0x4

.field public static final FOCUSING_TAP_CAPTURE:I = 0x2

.field public static final FOCUS_MODE_FACE:I = 0x2

.field public static final FOCUS_MODE_SENSOR:I = 0x0

.field public static final FOCUS_MODE_TOUCH:I = 0x1

.field public static final FOCUS_MODE_WAIT_FACE:I = 0x3

.field public static final HIDE_CAPTURE_REVIEW:I = 0x3a

.field public static final HIDE_EFFECT_CONTROL:I = 0x3c

.field public static final HTC_CAM_SWITCH_CHANGE:I = 0xe

.field public static final HW_3D_BUTTON_SWITCH:I = 0x48

.field private static final ID_MENU_ITEM_FLASH_AUTO:I = 0x1

.field private static final ID_MENU_ITEM_FLASH_OFF:I = 0x3

.field private static final ID_MENU_ITEM_FLASH_ON:I = 0x2

.field private static final ID_MENU_ITEM_MAIN_CAMCORDER:I = 0x2

.field private static final ID_MENU_ITEM_MAIN_CAMERA:I = 0x0

.field private static final ID_MENU_ITEM_SECOND_CAMCORDER:I = 0x3

.field private static final ID_MENU_ITEM_SECOND_CAMERA:I = 0x1

.field public static final INCREASE_ZOOM_POSITION:I = 0x37

.field public static final INCREASE_ZOOM_TIMEOUT:I = 0x96

.field public static final INTENT_ACTION_ALBUM:Ljava/lang/String; = "FROM_CAMERA"

.field private static final INTENT_ALBUM_RESULT:I = 0x0

.field private static final INTENT_KEY_JPEG_DATA:Ljava/lang/String; = "jpeg_data"

.field public static final INTENT_MODE_CAMCORDER:Ljava/lang/String; = "comcorder"

.field public static final INTENT_MODE_CAMERA:Ljava/lang/String; = "camera"

.field public static final INTENT_MODE_KEY:Ljava/lang/String; = "capture_mode"

.field public static final INTENT_PREVIEW_CAPTURE:Ljava/lang/String; = "capture"

.field public static final INTENT_PREVIEW_FILMSTRIP:Ljava/lang/String; = "filmstrip"

.field public static final INTENT_PREVIEW_KEY:Ljava/lang/String; = "preview_mode"

.field private static final INTENT_REVIEW_DURATION:Ljava/lang/String; = "review_duration"

.field public static final LOAD_LATEST_THUMBNAIL:I = 0x33

.field public static final LONG_PRESS_AREA:I = 0xf

.field public static final LONG_PRESS_PERIOD:J = 0x190L

.field public static final LONG_PRESS_SW_CAPTURE:I = 0x42

.field public static final LONG_PRESS_SW_CAPTURE_TIMEOUT:I = 0x3e8

.field public static final MENU_3D_CAMERA_SWITCH:I = 0x4f

.field private static final MIN_VOLUME:I = 0x1

.field public static final NO_FOCUSING:I = 0x0

.field private static final NO_KEEP_VOLUME:I = -0x1

.field public static final OPEN_CAPTURE_UI:I = 0xf

.field public static final PANEL_FADEOUT:I = 0x16

.field public static final PANEL_FADEOUT_TIMEOUT:I = 0x1f40

.field public static final PLAY_FOCUS_SOUND:I = 0x15

.field public static final PLAY_SOUND:I = 0x14

.field public static final PLAY_SOUND_POOL:I = 0x45

.field public static final PREPARE_FOCUS_BEFORE_CAPTURE:I = 0x22

.field public static final PREVIEW_DUPLICATE_END:I = 0x2b

.field public static final PREVIEW_DUPLICATE_START:I = 0x2a

.field public static final PROGRESS_STATUS:I = 0xd

.field public static final REMAINING_FADEOUT_TIMEOUT:I = 0x7d0

.field public static final REMAINING_LAYOUT_FADEOUT:I = 0x3e

.field private static final REQUEST_CODE_CROP_MSG:I = 0x1

.field public static final REQUEST_SURFACEVIEW_LAYOUT:I = 0x6

.field public static final RESET_GRID_VIEW:I = 0x8

.field public static final RESET_SURFACEVIEW_LAYOUT:I = 0x7

.field public static final RESTART_CHECK_SENSOR_FOCUS:I = 0x1f

.field public static final RESUME_PREVIOUS_EFFECT:I = 0x47

.field public static final REVIEW_DURATION_NO_TIME:I = -0x1

.field public static final ROTATE_ONSCREEN_CAMERA_SWITCH_BTN:I = 0x65

.field public static final SCENE_GUIDE_TIMEOUT:I = 0xbb8

.field private static final SCENE_SELECTOR_RESULT:I = 0x2

.field public static final SCREEN_SAVE:I = 0x24

.field public static final SELECT_ACTION_SCREEN:I = 0x26

.field public static final SET_LANDSCAPE:I = 0x68

.field public static final SET_ZOOM_MIN_MAX:I = 0x1

.field public static final SHOW_3D_HINT:I = 0x50

.field public static final SHOW_CAPTURE_REVIEW:I = 0x39

.field public static final SHOW_FOCUSING:I = 0x18

.field public static final SHOW_FOCUS_END:I = 0x1b

.field public static final SHOW_FOCUS_FAIL:I = 0x1a

.field public static final SHOW_FOCUS_SUCCESS:I = 0x19

.field public static final SHOW_FPS:I = 0x28

.field public static final SHOW_GPS_INDICATOR:I = 0x29

.field public static final SHOW_RECORDING_INDICATOR:I = 0x2

.field public static final SHOW_REMAINING_LAYOUT:I = 0x3d

.field public static final SHOW_STABLE_ICON:I = 0x4d

.field public static final SHOW_STABLE_ICON_PORT:I = 0x4e

.field public static final SHOW_TOAST:I = 0x25

.field public static final START_ALBUM_CAMERA:I = 0x11

.field public static final START_ALBUM_VIDEO:I = 0x12

.field public static final START_FACE_FOCUS:I = 0x35

.field public static final START_RECORDING_INDICATOR:I = 0x3

.field public static final START_SELF_PORTRAIT:I = 0x44

.field public static final START_SENSOR_FOCUS:I = 0x21

.field public static final STATUS_END:I = 0x0

.field public static final STATUS_RESUME:I = 0x1

.field public static final STOP_RECORDING_FINISH:I = 0x41

.field public static final STOP_RECORDING_INDICATOR:I = 0x4

.field public static final SUSPEND_ON_RECORDING:I = 0x40

.field public static final SWITCH_3D_PREVIEW_READY:I = 0x49

.field private static final TAG:Ljava/lang/String; = "HTCCamera"

.field public static final TRIGGER_STOP_RECORD:I = 0x52

.field public static final UNBLOCK_CAPTURE_UI:I = 0x34

.field public static final UNFREEZE_UI:I = 0x3f

.field public static final UPDATE_CAPTURE_MODE_LAYOUT:I = 0xc

.field public static final UPDATE_FLASH_FROM_RESTRICTION:I = 0x2c

.field public static final UPDATE_SCENE_ICON:I = 0x54

.field public static final UPDATE_STORAGE_LOCATION_MENU:I = 0x67

.field public static final UPDATE_THUMBNAIL_BUTTON:I = 0x32

.field public static final UPDATE_ZOOM_BAR_VISIBLE:I = 0xa

.field public static final ZOOMBAR_FADEOUT:I = 0x17

.field public static final ZOOMBAR_FADEOUT_TIMEOUT:I = 0x1388

.field private static final ZOOM_ACTION_KEY_DIVIDER:I = 0x5

.field public static bFocusFromPress:Z

.field public static bHoldFocusKey:Z

.field private static mBeepCount:I

.field private static mBlock3DSwitch:Z

.field private static mBlockCaptureUI:Z

.field private static mCurrentBeepLevel:I

.field public static mFocusMode:I

.field private static mFocus_Screen_X:I

.field private static mFocus_Screen_Y:I

.field private static mIsKeyguardShow:Z

.field private static mIsSelfPortraitTask:Z

.field private static mIsSelfTimerTask:Z

.field private static mIsWaitKeyguardBeforePreview:Z

.field private static mTurnOnTorch_Camcorder:Z


# instance fields
.field private CHECK_SWING_DURATION:I

.field public Display_Orientation:I

.field private From_ratio_land:F

.field private From_ratio_port:F

.field private SCENE_INDICATOR_RIGHT:I

.field private SCENE_INDICATOR_TOP:I

.field public SCREEN_DELAY:I

.field private SWING_LIMIT_ANGLE:I

.field private SWING_LIMIT_RATIO:F

.field private SWING_STABLE_THRESHOLD:I

.field private SWING_STEP:F

.field private To_ratio_land:F

.field private To_ratio_port:F

.field private animation_DURATION:I

.field private bCancelFocus:Z

.field private connManager:Landroid/net/ConnectivityManager;

.field private image_shift_ratio:F

.field private keep_backgroundDataSetting:Z

.field private leftBound_ratio:F

.field private m3DButtonStatus:I

.field private final m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

.field private m3DOptimalLandscape:Z

.field private m3DPreviewReady:Z

.field private m3DStatusInitialized:Z

.field private m3DTriggerCapture:Z

.field private mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private mActivityOnPause:Z

.field private mArrowHintLayout:Landroid/view/View;

.field private mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioStreamType:I

.field private final mAudioSyncRoot:Ljava/lang/Object;

.field private mAutoCaptureLayout:Landroid/view/View;

.field private mBlockPowerWarning:Z

.field mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Landroid/os/Handler;

.field private mCameraLayout:Landroid/widget/RelativeLayout;

.field mCameraThread:Lcom/android/camera/CameraThread;

.field private final mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

.field private mCanShowFocusView:Z

.field private mCapture_btn_ds:Landroid/widget/Button;

.field private mCapture_combine_ds:Landroid/view/View;

.field private mCapture_icon:Landroid/widget/ImageView;

.field mCapture_press:Landroid/graphics/drawable/Drawable;

.field mCapture_press_ds:Landroid/graphics/drawable/Drawable;

.field mCapture_rest:I

.field mCapture_rest_ds:I

.field private final mCloseActionScreenRunnable:Ljava/lang/Runnable;

.field private mCloseTouchEvent:Z

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentDialog:Landroid/app/Dialog;

.field private mEffectPanel:Lcom/android/camera/widget/Panel;

.field private mEffectReceiver:Landroid/view/View;

.field private mEffect_btn:Landroid/widget/Button;

.field private mEffect_icon:Landroid/widget/ImageView;

.field private mEnableSensorFocus:Z

.field private mFaceDetection:Lcom/android/camera/FaceDetection;

.field private mFaceNumber:I

.field private mFilmstrip_btn:Landroid/widget/ImageButton;

.field private mFilmstrip_combine:Landroid/view/View;

.field private mFilmstrip_layout:Landroid/view/View;

.field private mFilmstrip_thumbnail:Landroid/widget/ImageView;

.field private mFlashRestriction:Lcom/android/camera/FlashRestriction;

.field private mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

.field private mFlash_btn:Landroid/widget/Button;

.field private mFlash_icon:Landroid/widget/ImageView;

.field private mFlash_layout_ds:Landroid/widget/LinearLayout;

.field private mFlash_text_ds:Landroid/widget/TextView;

.field private mFocusAnimation:Landroid/view/View;

.field private mFocusPos_X:I

.field private mFocusPos_Y:I

.field public mFocusingState:I

.field private mForce2DMode:Z

.field private mFpsText:Landroid/widget/TextView;

.field private mFreezeOrientation:I

.field private mFreezeUI:Z

.field private mFront_land:Landroid/widget/RelativeLayout;

.field private mFront_port:Landroid/widget/RelativeLayout;

.field private mGpsIndicator:Landroid/widget/ImageView;

.field private mGpuEffectContr:Lcom/android/camera/GpuEffectController;

.field private mGridLayout:Landroid/view/View;

.field private mIS_LEVEL:Z

.field private mIS_LEVEL_PORT:Z

.field private mIdle:Z

.field private mIndicatorLayout:Landroid/view/View;

.field private mIndicatorLayout_Camcorder:Landroid/view/View;

.field private mIndicatorLayout_Camera:Landroid/view/View;

.field private mInstanceOrientation:I

.field private mIntentManager:Lcom/android/camera/IntentManager;

.field private mIsBackQuit:Z

.field private mIsCameraThreadRunning:Z

.field private mIsCaptureTriggered:Z

.field private mIsCaptureUIOpen:Z

.field private mIsFlashDisabled:Z

.field private mIsFlashlightOffByScene:Z

.field private mIsFullDataPartition:Z

.field private mIsPowerWarning:Z

.field private mIsPreviewStarted:Z

.field private mIsSipExist:Z

.field private mIsTouchScreen:Z

.field private mIsUIReady:Z

.field private mIsZoomLocked:Z

.field mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private final mKeyguardReceiver:Landroid/content/BroadcastReceiver;

.field private mLastOrientation:I

.field private mLastSavedMediaPath:Ljava/lang/String;

.field private mLocationHandler:Lcom/android/camera/LocationHandler;

.field private mMainBar:Landroid/view/View;

.field private mMainBar_item:Landroid/view/View;

.field private mMainBar_receiver:Landroid/view/View;

.field private mMainLayout:Landroid/view/View;

.field mMainThread:Ljava/lang/Thread;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

.field private mMode_btn:Landroid/widget/Button;

.field private mMode_icon:Landroid/widget/ImageView;

.field private mMode_layout_ds:Landroid/widget/LinearLayout;

.field private mMode_text_ds:Landroid/widget/TextView;

.field private mMuteIndicatorLayout:Landroid/view/View;

.field private mNeed_doOnCreate:Z

.field private mNeed_doOnResume:Z

.field private mNeed_initOnCreate:Z

.field private mNeed_unregisterReceiver:Z

.field private mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

.field private mOnScreenSwitch_btn:Landroid/widget/Button;

.field private mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOriginalVolume_Alarm:I

.field private mOriginalVolume_Ring:I

.field public mPanel:Lcom/android/camera/widget/SlidingDrawer;

.field private final mPartitonReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoto_btn:Landroid/widget/Button;

.field private mPhoto_icon:Landroid/widget/ImageView;

.field private mPlayBeepTime:J

.field private final mPrepareActionScreenRunnable:Ljava/lang/Runnable;

.field private mPreviewDuplicate:Landroid/widget/ImageView;

.field private mPreviewFilterLayout:Landroid/view/View;

.field private mPreviewVisibleArea:Landroid/view/View;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

.field private mRecord_sec:J

.field private mRecording_Hour:Landroid/widget/TextView;

.field private mRecording_Shining:Z

.field private mRecording_Time:Landroid/widget/TextView;

.field private mRemainingLayout:Landroid/view/View;

.field private mRemainingText:Landroid/widget/TextView;

.field private mReviewDuration:I

.field private mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

.field private mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mRunnable_Swing:Ljava/lang/Runnable;

.field private final mSIPReceiver:Landroid/content/BroadcastReceiver;

.field private mSceneGuideLayout:Landroid/view/View;

.field private mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneIndicatorLayout:Landroid/view/View;

.field private mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneLandscapeTipText:Landroid/widget/TextView;

.field private mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

.field private mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mScene_Idx:I

.field private mScene_btn_ds:Landroid/widget/Button;

.field private mScene_icon_ds:Landroid/widget/ImageView;

.field private mScene_layout_ds:Landroid/widget/LinearLayout;

.field private mScene_text_ds:Landroid/widget/TextView;

.field private mScreensave:Landroid/view/View;

.field private mScreensaveText:Landroid/widget/TextView;

.field private mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mSecondLayout:Landroid/view/View;

.field private mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

.field private mSelfPortraitHint_text:Landroid/widget/TextView;

.field private mSensorHandler:Lcom/android/camera/SensorHandler;

.field private final mShowActionScreenRunnable:Ljava/lang/Runnable;

.field private mSoundID_beep:I

.field private mSoundID_beep2:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolVolume:I

.field private mStartCountTime:J

.field private mStartTapCapture:Z

.field private mStartTime:J

.field private mStreamID_beep:I

.field private mStreamID_beep2:I

.field private mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

.field private mSurfaceCreated:Z

.field private mSurfaceHeight:I

.field mSurfaceHolder:Landroid/view/SurfaceHolder;

.field mSurfaceView:Landroid/view/SurfaceView;

.field private mSurfaceWidth:I

.field private mSwitchBtn_icon:Landroid/widget/ImageView;

.field private mSwitch_btn:Landroid/widget/Button;

.field private mSwitch_layout_ds:Landroid/widget/LinearLayout;

.field private mSwitch_text_ds:Landroid/widget/TextView;

.field private mThumbController:Lcom/android/camera/ThumbnailController;

.field private mTimerBase:Landroid/widget/ImageView;

.field private mToast:Lcom/android/camera/rotate/RotateToast;

.field private mTouchDown_X:I

.field private mTouchDown_Y:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateCountDuration:J

.field private mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mVideoThumbnailView:Landroid/widget/ImageView;

.field private mWaitResetSettings:Z

.field private mWillCloseCamera:Z

.field private mZoomActionStep:I

.field private mZoomBar:Lcom/android/camera/widget/ZoomBar;

.field private mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

.field private mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

.field private mZoomLayout:Landroid/view/View;

.field private mZoomTouch:Lcom/android/camera/ZoomTouch;

.field m_CancelFocusFromTouch:Z

.field private m_EventManager:Lcom/android/camera/EventManager;

.field m_NeedTriggerRecord:Z

.field private m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_sceneImage:Landroid/widget/ImageView;

.field private mbackIcon_land:Landroid/widget/ImageView;

.field private mbackIcon_port:Landroid/widget/ImageView;

.field private mfrontIcon_land:Landroid/widget/ImageView;

.field private mfrontIcon_port:Landroid/widget/ImageView;

.field private mivFaceOne:Landroid/widget/ImageView;

.field private mivFaceTwo:Landroid/widget/ImageView;

.field private mivFocusedView:Landroid/widget/ImageView;

.field private mivFocusingView:Landroid/widget/ImageView;

.field private mivGrid:Landroid/widget/ImageView;

.field private mivMute:Landroid/widget/ImageView;

.field private mivSelfTimer:Landroid/widget/ImageView;

.field private mtvSelfTimer:Landroid/widget/TextView;

.field private rightBound_ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    sput v1, Lcom/android/camera/HTCCamera;->mFocusMode:I

    sput-boolean v1, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sput v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    sput-boolean v1, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    iput v6, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    iput v5, p0, Lcom/android/camera/HTCCamera;->mZoomActionStep:I

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFullDataPartition:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    new-instance v0, Lcom/android/camera/HTCCamera$1;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$1;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/HTCCamera$2;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$2;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$3;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$3;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/HTCCamera$4;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$4;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/camera/HTCCamera$5;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$5;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/android/camera/HTCCamera$6;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$6;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/android/camera/HTCCamera$7;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$7;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v0, 0x7f020062

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest_ds:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press_ds:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneIndicatorLayout:Landroid/view/View;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    const/16 v0, 0x41

    iput v0, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->CHECK_SWING_DURATION:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->animation_DURATION:I

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    const/high16 v0, 0x4334

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_ANGLE:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    iput v5, p0, Lcom/android/camera/HTCCamera;->SWING_STABLE_THRESHOLD:I

    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_land:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->From_ratio_port:F

    iput v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    iget v0, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    iput v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020147

    iput v0, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_btn:Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mVideoThumbnailView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFaceOne:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFaceTwo:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_text:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMuteIndicatorLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecording_Time:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecording_Hour:Landroid/widget/TextView;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWillCloseCamera:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    iput v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomTouch:Lcom/android/camera/ZoomTouch;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iput v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    iput v6, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    iput v3, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    iput v6, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    new-instance v0, Lcom/android/camera/HTCCamera$32;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$32;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$33;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$33;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$34;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$34;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$35;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$35;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/camera/HTCCamera$50;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$50;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private QueryToggleStorage()V
    .locals 4

    const-string v0, ""

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a0131

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/camera/rotate/RotateDialog$Builder;

    invoke-direct {v1, p0}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a012f

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013c

    new-instance v3, Lcom/android/camera/HTCCamera$49;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$49;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    new-instance v3, Lcom/android/camera/HTCCamera$48;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$48;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    check-cast v1, Lcom/android/camera/rotate/RotateDialog;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f0a0130

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private WriteModePreference()V
    .locals 2

    const-string v0, "camera_capture_mode_photo"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_0

    const-string v0, "camera_capture_mode_photo"

    :goto_0
    const-string v1, "camera_capture_mode"

    invoke-static {p0, v1, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "camera_capture_mode_movie"

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecording_Time:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mRecording_Time:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$10100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateFreeCount()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$10200(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method static synthetic access$10202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$10302(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$10400(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return v0
.end method

.method static synthetic access$10602(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    return p1
.end method

.method static synthetic access$10700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camcorder()V

    return-void
.end method

.method static synthetic access$10800()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return v0
.end method

.method static synthetic access$10802(I)I
    .locals 0

    sput p0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    return p0
.end method

.method static synthetic access$10902(I)I
    .locals 0

    sput p0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return p0
.end method

.method static synthetic access$10908()I
    .locals 2

    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecording_Hour:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11002(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mRecording_Hour:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$11100(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->playSoundPool(I)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return v0
.end method

.method static synthetic access$11202(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    return p1
.end method

.method static synthetic access$11300(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return v0
.end method

.method static synthetic access$11302(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    return p1
.end method

.method static synthetic access$11400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->switch3DMode()V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hidePortraitSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$11600(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideHDRSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideLandscapeSceneGuide(Z)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateRecordingTimerOrientation()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onCameraThreadRunning()V

    return-void
.end method

.method static synthetic access$12802(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->showTimerBase(Z)V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return v0
.end method

.method static synthetic access$13002(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    return p1
.end method

.method static synthetic access$13100(Lcom/android/camera/HTCCamera;Lcom/android/camera/widget/SlidingMenu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->prepareOpeningExtensionMenu(Lcom/android/camera/widget/SlidingMenu;)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startSceneSelector()V

    return-void
.end method

.method static synthetic access$13700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initEffectPanel()V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/SlidingDrawer;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$14000(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return v0
.end method

.method static synthetic access$14002(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_X:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mStartCountTime:J

    return-wide p1
.end method

.method static synthetic access$14100(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return v0
.end method

.method static synthetic access$14102(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mTouchDown_Y:I

    return p1
.end method

.method static synthetic access$14200(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMuteIndicatorLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    return-void
.end method

.method static synthetic access$14900()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method static synthetic access$14902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$15000()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide p1
.end method

.method static synthetic access$15100()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    return v0
.end method

.method static synthetic access$15200(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    return v0
.end method

.method static synthetic access$1522(Lcom/android/camera/HTCCamera;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mUpdateCountDuration:J

    return-wide v0
.end method

.method static synthetic access$15300(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    return v0
.end method

.method static synthetic access$15400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$15702(Lcom/android/camera/HTCCamera;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->From_ratio_port:F

    return p1
.end method

.method static synthetic access$15800(Lcom/android/camera/HTCCamera;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    return v0
.end method

.method static synthetic access$15902(Lcom/android/camera/HTCCamera;F)F
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->From_ratio_land:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/camera/HTCCamera;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$16000(Lcom/android/camera/HTCCamera;)F
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/HTCCamera;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide p1
.end method

.method static synthetic access$1608(Lcom/android/camera/HTCCamera;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    return-wide v0
.end method

.method static synthetic access$16100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->swing()V

    return-void
.end method

.method static synthetic access$16200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/android/camera/HTCCamera;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    return-void
.end method

.method static synthetic access$16500(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->showSceneIndicator(Z)V

    return-void
.end method

.method static synthetic access$16600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/android/camera/HTCCamera;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->setLayoutForTimer(ZII)V

    return-void
.end method

.method static synthetic access$16800(Lcom/android/camera/HTCCamera;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->setLayoutForRecordIcon(ZII)V

    return-void
.end method

.method static synthetic access$16900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/HTCCamera;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/HTCCamera;JLandroid/widget/TextView;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->getTimeString(JLandroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/HTCCamera;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->getTimeString_ds(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ZoomTouch;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomTouch:Lcom/android/camera/ZoomTouch;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/HTCCamera;Lcom/android/camera/ZoomTouch;)Lcom/android/camera/ZoomTouch;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mZoomTouch:Lcom/android/camera/ZoomTouch;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/HTCCamera;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mZoomActionStep:I

    return p1
.end method

.method static synthetic access$4102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    return p0
.end method

.method static synthetic access$4200(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->hideTimerBase(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/camera/HTCCamera;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->reset_surface_view(II)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetGridView()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateZoomBarVisible()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/camera/HTCCamera;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->changeIndicatorLayout(IZ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/camera/HTCCamera;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/Panel;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mRecording_Shining:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/HTCCamera;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->rotateOnScreenCameraSwitchButton(IZ)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6600()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    return v0
.end method

.method static synthetic access$6700()I
    .locals 1

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    return v0
.end method

.method static synthetic access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->checkFaceDetection()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    return-void
.end method

.method static synthetic access$7302(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onTouchCapture_Camera()V

    return-void
.end method

.method static synthetic access$7602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return p0
.end method

.method static synthetic access$7700(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopSoundPool()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    return v0
.end method

.method static synthetic access$7900(Lcom/android/camera/HTCCamera;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpsIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8302(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    return v0
.end method

.method static synthetic access$8600(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    return v0
.end method

.method static synthetic access$8700(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method static synthetic access$8800(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnResume_after_preview()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return v0
.end method

.method static synthetic access$9102(Lcom/android/camera/HTCCamera;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/camera/HTCCamera;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/HTCCamera;->updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/camera/HTCCamera;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    return v0
.end method

.method static synthetic access$9900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ZoomBar;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    return-object v0
.end method

.method private broadcastStopFM()V
    .locals 0

    return-void
.end method

.method private broadcastStopMusic()V
    .locals 0

    return-void
.end method

.method private broadcastStopVoiceRecording()V
    .locals 4

    const-string v3, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "!!!! @@@@ broadcastStopVoiceRecording() - start"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.soundrecorder.recordingservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "HTCCamera"

    const-string v1, "!!!! @@@@ broadcastStopVoiceRecording() - end"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private changeIndicatorLayout(IZ)V
    .locals 10

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    :cond_0
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateIndicatorLayout_AutoCapture()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    if-lez v0, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSelfPortraitHint()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const/16 v1, 0x12c

    const/16 v5, 0x12c

    invoke-static {v0, v3, v2, v1, v5}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->showSceneIndicator(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v5, 0x190

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    :goto_2
    move-object v0, p0

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/HTCCamera;->showSceneIndicatorAnimation(Landroid/view/View;FFIIIZI)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewStub;

    invoke-virtual {v9}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mMuteIndicatorLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateIndicatorLayout_RecordMute()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMuteIndicatorLayout:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camcorder:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    move v7, v4

    goto :goto_2
.end method

.method private checkFaceDetection()V
    .locals 9

    const/16 v8, 0x23

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v4, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x64

    invoke-static {v4, v8, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_8

    move v1, v6

    :goto_1
    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v4, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v5, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v4, v5, :cond_3

    const-string v4, "pref_camera_auto_focus"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    move v0, v6

    :goto_2
    const-string v4, "pref_face_detection"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-gtz v4, :cond_5

    if-ne v1, v6, :cond_a

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_4
    if-ne v0, v6, :cond_a

    if-ne v2, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-lez v4, :cond_6

    :cond_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-nez v4, :cond_7

    new-instance v4, Lcom/android/camera/FaceDetection;

    invoke-direct {v4}, Lcom/android/camera/FaceDetection;-><init>()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/FaceDetection;->initFaceDetection(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    :cond_7
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->startFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v4

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_8
    move v1, v7

    goto :goto_1

    :cond_9
    move v0, v7

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v4}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/camera/HTCCamera;->updateFaceIcon(I)V

    goto/16 :goto_0
.end method

.method private checkTapCapture(II)V
    .locals 8

    const/16 v4, 0xf

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    if-eq v3, v7, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v2}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    sub-int v3, p2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    sub-long v0, v3, v5

    const-wide/16 v3, 0x190

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0

    :cond_3
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    const-string v3, "HTCCamera"

    const-string v4, "Tap & Capture - mFocusingState = FOCUSING_TAP_CAPTURE"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    goto :goto_0
.end method

.method private closeCaptureUI()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "closeCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isReady()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hideEffectControl()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->showSceneIndicator(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    :cond_9
    return-void
.end method

.method private closeSecondLayout(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Closed"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hideRemainingLayout()V

    goto :goto_0
.end method

.method private closeSelfTimer()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "closeSelfTimer() - start"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "closeSelfTimer() - mtvSelfTimer = null, return"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->hideTimerBase(Z)V

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eq v1, v3, :cond_1

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ne v0, v3, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v1, "HTCCamera"

    const-string v1, "UnBlock Capture UI - close self timer"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    const-string v1, "HTCCamera"

    const-string v1, "closeSelfTimer() - end"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "pref_grid"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1
.end method

.method private doAfterSceneSelect(I)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "AutoScene.Enabled"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07000e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v4, 0x7f07000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    iput p1, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    iget v4, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v5, Lcom/android/camera/BooleanEvent;

    const-string v6, "AutoScene.Enabled"

    invoke-direct {v5, v9, v8}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    iget v4, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    const-string v5, "depth"

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v4}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v4}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v4}, Lcom/android/camera/MenuHandler;->checkMenuSetting()V

    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v1, p1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    aget-object v5, v3, p1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v4, v5, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitPanoramaMode()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitHdrMode()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitBurstMode()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->exitHappyShotMode()V

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v5, Lcom/android/camera/BooleanEvent;

    const-string v6, "AutoScene.Enabled"

    invoke-direct {v5, v9, v7}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    const-string v5, "none"

    invoke-virtual {v4, v5, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v4

    if-eq v4, v8, :cond_0

    const-string v4, "pref_camera_effect_manual"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v4, v0, v7}, Lcom/android/camera/GpuEffectController;->setUpEffect(Ljava/lang/String;I)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doOnCreate_after_preview()V
    .locals 14

    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - not need to do"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    new-instance v0, Lcom/android/camera/RecordLimitCheck;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v0, v1}, Lcom/android/camera/RecordLimitCheck;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    new-instance v0, Lcom/android/camera/LocationHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/LocationHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    new-instance v0, Lcom/android/camera/SensorHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/camera/HTCCamera$9;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$9;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDelayCreateImageThumb()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_18

    const/16 v1, 0x1d

    :goto_2
    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    new-instance v1, Lcom/android/camera/HTCCamera$10;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$10;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setOnItemClickListener(Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    new-instance v1, Lcom/android/camera/HTCCamera$11;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$11;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setOnMenuStateChangedListener(Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    new-instance v1, Lcom/android/camera/HTCCamera$12;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$12;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setOnItemClickListener(Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    new-instance v1, Lcom/android/camera/HTCCamera$13;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$13;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setOnMenuStateChangedListener(Lcom/android/camera/widget/SlidingMenu$OnMenuStateChangedListener;)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$14;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$14;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$15;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$15;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$16;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$16;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$17;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$17;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$18;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$18;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$19;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$19;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_btn:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$20;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$20;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_c
    const/4 v12, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    const-string v0, ""

    const v1, 0x186a0

    invoke-static {p0, v0, v1}, Lcom/android/camera/rotate/RotateToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/android/camera/rotate/RotateToast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_e
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/camera/GpuEffectController;

    invoke-direct {v0}, Lcom/android/camera/GpuEffectController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v2

    invoke-virtual {v0, v7, v1, p0, v2}, Lcom/android/camera/GpuEffectController;->init(Landroid/view/ViewStub;Landroid/os/Handler;Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraController;)V

    :cond_10
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewStub;

    :goto_5
    invoke-virtual {v12}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v10

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/16 v0, 0x8

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const v0, 0x7f080115

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    const v0, 0x7f080117

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    const v0, 0x7f080119

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020153

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020152

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000c

    const v5, 0x7f020154

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000b

    const v6, 0x7f020155

    invoke-static {p0, v5, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$21;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$21;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    new-instance v0, Lcom/android/camera/MenuHandler;

    invoke-direct {v0}, Lcom/android/camera/MenuHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v0, p0, v1, v10, v2}, Lcom/android/camera/MenuHandler;->initMenuHandler(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Landroid/view/View;Lcom/android/camera/GpuEffectController;)V

    const v0, 0x7f080113

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/SlidingDrawer;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x7f0a000e

    const v5, 0x7f0200ff

    invoke-static {p0, v4, v5}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x7f0a000d

    const v6, 0x7f020100

    invoke-static {p0, v5, v6}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/widget/SlidingDrawer;->setHandleDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_13
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$22;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$22;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerOpenListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerOpenListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$23;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$23;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerCloseListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerCloseListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$24;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$24;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnDrawerScrollListener(Lcom/android/camera/widget/SlidingDrawer$OnDrawerScrollListener;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$25;

    invoke-direct {v1, p0, v9}, Lcom/android/camera/HTCCamera$25;-><init>(Lcom/android/camera/HTCCamera;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    new-instance v1, Lcom/android/camera/HTCCamera$26;

    invoke-direct {v1, p0, v13}, Lcom/android/camera/HTCCamera$26;-><init>(Lcom/android/camera/HTCCamera;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setOnCaptureListener(Lcom/android/camera/widget/SlidingDrawer$OnCaptureListener;)V

    :cond_14
    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f0a000f

    const v1, 0x7f0200bd

    invoke-static {p0, v0, v1}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v0, v6}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setFocusable(Z)V

    new-instance v0, Lcom/android/camera/HTCCamera$28;

    invoke-direct {v0, p0}, Lcom/android/camera/HTCCamera$28;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_15
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    :cond_16
    const-string v0, "HTCCamera"

    const-string v1, "doOnCreate_after_preview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x1e

    goto/16 :goto_2

    :cond_19
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_1a

    const/16 v1, 0x1d

    :goto_7
    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_3

    :cond_1a
    const/16 v1, 0x1e

    goto :goto_7

    :cond_1b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_1c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    :cond_1d
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-direct {p0, v8, v0}, Lcom/android/camera/HTCCamera;->enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    :cond_1e
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewStub;

    goto/16 :goto_5

    :cond_1f
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    new-instance v1, Lcom/android/camera/HTCCamera$27;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$27;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_6
.end method

.method private doOnDestory()V
    .locals 4

    const/4 v1, 0x0

    const-string v3, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "doOnDestroy() - start"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->deinitializeComponents()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->releaseMenuHandler()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    invoke-virtual {v0}, Lcom/android/camera/widget/ZoomBar;->releaseResource()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->releaseLocationHandler()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->releaseSensorHandler()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->releaseIntentManager()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->close()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->releaseCameraThread()V

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    const-string v2, "CAMCORDER_MODE=OFF"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "HTCCamera"

    const-string v0, "doOnDestroy() - end"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doOnResume_after_preview()V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v10, "mounted"

    const-string v7, "HTCCamera"

    const-string v4, "HTCCamera"

    const-string v4, "doOnResume_after_preview() - start"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-nez v4, :cond_0

    const-string v4, "HTCCamera"

    const-string v4, "doOnResume_after_preview() - not need to do"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "HTC_IME_CURRENT_STATE"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v4}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    :goto_2
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v5, 0x35

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v4, v5}, Lcom/android/camera/GpuEffectController;->resume(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v4, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v9, v4, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v4, :cond_5

    new-instance v4, Lcom/android/camera/FlashRestriction;

    invoke-direct {v4}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v4, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    :cond_5
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->loadSoundPool()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "pref_first_time_launch"

    invoke-static {p0, v4, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :cond_9
    sget-boolean v4, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "pref_sdcard_state"

    invoke-static {p0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    const-string v4, "mounted"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    const-string v4, "HTCCamera"

    const-string v4, "doOnResume_after_preview() - end"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    const-string v4, "HTCCamera"

    const-string v4, "registerReceiver failed!!"

    invoke-static {v7, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto/16 :goto_2
.end method

.method private enableMainBarItems(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private enableSceneIcon(IZ)V
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_camera_scene_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    :try_start_0
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v0, v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v2, v3, v4}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method private enlargeTouchArea(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/view/TouchDelegate;

    invoke-direct {v1, v0, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0
.end method

.method private getAdjustedVolume(I)I
    .locals 4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    int-to-double v0, p1

    const-wide v2, 0x3fe6666666666666L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private getTimeString(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_0

    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getTimeString(JLandroid/widget/TextView;)Ljava/lang/String;
    .locals 10

    const-wide/16 v6, 0x3c

    rem-long v4, p1, v6

    const-wide/16 v6, 0x3c

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    if-eqz p3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-string v6, "%d hr"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const-string v6, "%02d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getTimeString_ds(J)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x3c

    rem-long v4, p1, v8

    div-long v6, p1, v8

    rem-long v2, v6, v8

    const-wide/16 v6, 0xe10

    div-long v0, p1, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-string v6, "%02d:%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_0
    const-string v6, "%02d:%02d"

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleSensorFocus()V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "HTCCamera"

    const-string v6, "HTCCamera"

    const-string v6, "handleSensorFocus() - start"

    invoke-static {v9, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HTCCamera"

    const-string v6, "Block Capture UI - take focus start"

    invoke-static {v9, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v8, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x23

    invoke-static {v6, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v6}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v6}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    :cond_0
    iget v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v6, :cond_1

    const-string v6, "HTCCamera"

    const-string v6, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v9, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_1
    sput v10, Lcom/android/camera/HTCCamera;->mFocusMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v1}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v6, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-ne v6, v8, :cond_3

    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    :goto_0
    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v6}, Lcom/android/camera/GpuEffectController;->getCircleCenter()[I

    move-result-object v0

    if-eqz v0, :cond_2

    aget v4, v0, v10

    aget v5, v0, v8

    :cond_2
    invoke-direct {p0, v4, v5}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, v4, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    invoke-direct {p0, v6, v7, v1}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    const-string v6, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSensorFocus("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - end"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget v3, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    goto :goto_0
.end method

.method private hideAllScene()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->hideSunNightSceneGuide(Z)V

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->hideHDRSceneGuide(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    return-void
.end method

.method private hideHDRSceneGuide(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$39;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$39;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x55

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideLandscapeSceneGuide(Z)V
    .locals 6

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x4c

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v3}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    :goto_1
    if-eqz p1, :cond_4

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v3, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/android/camera/HTCCamera$40;

    invoke-direct {v3, p0}, Lcom/android/camera/HTCCamera$40;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private hidePortraitSceneGuide(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$37;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$37;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x4a

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideSelfPortraitHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private hideSunNightSceneGuide(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$38;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$38;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideTimerBase(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initEffectPanel()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v2, 0x7f080103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/widget/Panel;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    new-instance v2, Lcom/android/camera/HTCCamera$44;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$44;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/Panel;->setOnPanelListener(Lcom/android/camera/widget/Panel$OnPanelListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v1, v2}, Lcom/android/camera/GpuEffectController;->setEffectMenuBar(Lcom/android/camera/widget/Panel;)V

    :cond_0
    return-void
.end method

.method private initOnCreate_after_preview()V
    .locals 9

    const v8, 0x7f0200d0

    const v7, 0x7f0200cf

    const/4 v5, 0x0

    const v4, 0x7f0a0002

    const-string v6, "HTCCamera"

    const-string v2, "HTCCamera"

    const-string v2, "initOnCreate_after_preview() - start"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    if-nez v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v2, "initOnCreate_after_preview() - not need to do"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v2, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_f

    const v2, 0x7f080043

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    :cond_1
    const-string v2, "HTCCamera"

    const-string v2, "initOnCreate_after_preview() - set mMainLayout visible"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_2

    const v2, 0x7f080039

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_3

    const v2, 0x7f080040

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-nez v2, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f0800f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800dd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/android/camera/component/ThumbnailController;->isSupported()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v7}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowHintLayout:Landroid/view/View;

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    const v2, 0x7f080050

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneIndicatorLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneIndicatorLayout:Landroid/view/View;

    const v3, 0x7f080158

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080159

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    :cond_b
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    if-nez v2, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f0800ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_thumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_btn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSwitchButton()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f080175

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getCachePaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    :cond_d
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v2, v5}, Lcom/android/camera/HTCCamera;->changeIndicatorLayout(IZ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/camera/HTCCamera;->enableSceneIcon(IZ)V

    :cond_e
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    const-string v2, "HTCCamera"

    const-string v2, "initOnCreate_after_preview() - end"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    goto/16 :goto_1

    :cond_10
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f080105

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_receiver:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08010b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const v3, 0x7f08010c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const v3, 0x7f0800ee

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    invoke-static {p0, v4, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    invoke-static {p0, v4, v8}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_13
    const-string v2, "HTCCamera"

    const-string v2, "mCameraThread == null, can\'t update layout based on capture mode !!!"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private initZoomBar()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v5, 0x7f080177

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const v5, 0x7f080192

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/widget/ZoomBar;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    new-instance v5, Lcom/android/camera/HTCCamera$45;

    invoke-direct {v5, p0}, Lcom/android/camera/HTCCamera$45;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/widget/ZoomBar;->setOnPositionChangeListner(Lcom/android/camera/widget/ScrollInterface$PositionChangeListner;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    invoke-virtual {v4, v6}, Lcom/android/camera/widget/ZoomBar;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const v5, 0x7f080193

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateImageView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const v5, 0x7f080191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateImageView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateImageView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateImageView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    new-instance v5, Lcom/android/camera/HTCCamera$46;

    invoke-direct {v5, p0}, Lcom/android/camera/HTCCamera$46;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->isZoomRangeRetrieved()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMinimumZoom()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getMaximumZoom()I

    move-result v0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    invoke-virtual {v4, v1, v0}, Lcom/android/camera/widget/ZoomBar;->setMinMax(II)Z

    :cond_0
    sget v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mZoomBar:Lcom/android/camera/widget/ZoomBar;

    invoke-virtual {v4, v3}, Lcom/android/camera/widget/ZoomBar;->setPosition(I)Z

    return-void
.end method

.method public static isKeyguardShow()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    return v0
.end method

.method private loadSoundPool()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSoundPoolVolume:I

    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f06

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    const/4 v4, 0x1

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "HTCCamera"

    const-string v3, "loadSoundPool() failed!!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V
    .locals 10

    const-string v9, "HTCCamera"

    const-string v8, ") point: ("

    const-string v7, ")"

    const-string v6, ", "

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapFocusPoint Screen - size: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") point: ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v4, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    mul-int v4, v3, p1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v0, v4, v5

    mul-int v4, v2, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int v1, v4, v5

    :goto_1
    const-string v4, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mapFocusPoint Preview - size: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") point: ("

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    goto/16 :goto_0

    :cond_1
    mul-int v4, v3, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int v0, v4, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, p1

    mul-int/2addr v4, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v1, v4, v5

    goto :goto_1
.end method

.method private onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "HTCCamera"

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-eqz v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v0, "Activity is already paused"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_4

    const-string v0, "HTCCamera"

    const-string v0, "Key-guard is visible, start preview later"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2, v2, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0
.end method

.method private onCameraThreadRunning()V
    .locals 4

    const-string v3, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - start"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "There is no camera thread"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Media.Saved"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Zoom.Changed"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThreadEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandlerAsync(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "CameraActivity.CameraThreadRunning"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v1, "onCameraThreadRunning() - end"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "HTCCamera"

    const-string v1, "eventManager == null"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onRemovableStorageEjected()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v1, "storage eject, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageMounted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    sget-boolean v0, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->QueryToggleStorage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRemovableStorageUnmounted()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->saveSDCardState()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "storage unmounted, Camera app finished on recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private onRotateChanged(I)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    move v4, v0

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/camera/rotate/OrientationConfig;->isEqual_UIOrientation(I)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "HTCCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRotateChanged old ui orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", set orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_fromDegrees(I)F

    move-result v17

    invoke-static/range {p1 .. p1}, Lcom/android/camera/rotate/OrientationConfig;->animation_toDegrees(I)F

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera;->startRotateAnimation(FF)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    move-object v4, v0

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    move-object v4, v0

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/MenuHandler;->updateOrientation(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v20, 0x0

    const/16 v19, 0x0

    if-eqz p1, :cond_5

    const/4 v4, 0x2

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_16

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const v4, 0x7f0b0094

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const v4, 0x7f0b0094

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_7
    const v4, 0x7f0b0090

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v19, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    move/from16 v0, v19

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    move-object v4, v0

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/GpuEffectController;->setUiOrientation(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    move-object v4, v0

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x190

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v4

    new-instance v5, Lcom/android/camera/HTCCamera$29;

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera$29;-><init>(Lcom/android/camera/HTCCamera;I)V

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientationDelay(I)V

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    move-object v4, v0

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientationDelay(I)V

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    invoke-direct/range {p0 .. p1}, Lcom/android/camera/HTCCamera;->updateRotateViews(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    move-object v4, v0

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setItemOrientation(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    move-object v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingMenu;->setItemOrientation(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x65

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x190

    move/from16 v6, p1

    invoke-static/range {v4 .. v10}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x190

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_10
    :goto_3
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-static/range {p1 .. p1}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v10, v0

    new-instance v4, Lcom/android/camera/OrientationEvent;

    const-string v5, "CameraActivity.RotateChanged"

    move/from16 v7, p1

    move/from16 v8, v17

    move/from16 v9, v23

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/OrientationEvent;-><init>(Ljava/lang/String;IIFF)V

    invoke-virtual {v10, v4}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v18

    invoke-static/range {p0 .. p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v22

    const/16 v16, 0x0

    if-lez v22, :cond_11

    const/16 v16, 0x1

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v8, v0

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x190

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    move v14, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object v4, v0

    iget v15, v4, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v7, p0

    move/from16 v13, p1

    invoke-virtual/range {v7 .. v15}, Lcom/android/camera/HTCCamera;->showSceneIndicatorAnimation(Landroid/view/View;FFIIIZI)V

    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x2b

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x2b

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x16

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x16

    const-wide/16 v6, 0x1f40

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x3b

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x3b

    const-wide/16 v6, 0x1388

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x64

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    move-object v4, v0

    const/16 v5, 0x64

    const-wide/16 v6, 0xfa0

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/HTCCamera;->updateRecordingTimerOrientation(I)V

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const v4, 0x7f0b0095

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    const v4, 0x7f0b0095

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move v0, v4

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_SubMenu_Setting:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_18
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-nez v4, :cond_19

    const v4, 0x7f0b0091

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_19
    const v4, 0x7f0b00f4

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    move v0, v4

    float-to-int v0, v0

    move/from16 v19, v0

    goto/16 :goto_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mRotateLayout_Indicator:Lcom/android/camera/rotate/RotateLinearLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mMuteIndicatorLayout:Landroid/view/View;

    move-object v4, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->setIconPosition(ILandroid/view/View;)V

    goto/16 :goto_2

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/camera/HTCCamera;->rotateOnScreenCameraSwitchButton(IZ)V

    goto/16 :goto_3

    :cond_1c
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object v4, v0

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p1

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->setLayoutForTimer(ZII)V

    if-nez v18, :cond_1e

    const/4 v4, 0x1

    :goto_6
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object v6, v0

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->setLayoutForRecordIcon(ZII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto/16 :goto_5

    :cond_1e
    const/4 v4, 0x0

    goto :goto_6
.end method

.method private onTouchCapture_Camcorder()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "Touch button to start video recording"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v2, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "onTouchCapture_Camcorder, 3D portrait capture !!!"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0038

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v1, "HTCCamera"

    const-string v1, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_0

    :cond_2
    const-string v1, "HTCCamera"

    const-string v1, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0
.end method

.method private onTouchCapture_Camera()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x25

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "HTCCamera"

    const-string v2, "HTCCamera"

    const-string v2, "Touch button to take picture"

    invoke-static {v3, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-lez v2, :cond_0

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v2, :cond_0

    const v1, 0x7f0a012b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v6, v1, v4, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v5, :cond_1

    const-string v2, "HTCCamera"

    const-string v2, "onTouchCapture_Camera, 3D portrait capture !!!"

    invoke-static {v3, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0038

    invoke-static {v2, v3, v4, v0, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v5, :cond_4

    const-string v2, "HTCCamera"

    const-string v2, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v3, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    goto :goto_0
.end method

.method private openSecondLayout(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/16 v3, 0x12c

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateZoomBarVisible()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "SecondLayout.Opened"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playSoundPool(I)V
    .locals 9

    const-string v8, "HTCCamera"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "playSoundPool() - mSoundPool = null"

    invoke-static {v8, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    const-string v0, "HTCCamera"

    const-string v0, "playSoundPool() failed!!"

    invoke-static {v8, v0, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mSoundID_beep2:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private prepareOpeningExtensionMenu(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 4

    const/16 v3, 0x64

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    return-void
.end method

.method private releaseSoundPool()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method private resetFocusView()V
    .locals 5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "resetFocusView() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string v0, "HTCCamera"

    const-string v0, "resetFocusView() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    check-cast p0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_0
.end method

.method private resetGridView()V
    .locals 6

    const/4 v4, 0x1

    const-string v5, "HTCCamera"

    const/4 v0, 0x0

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v4, :cond_0

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v4, :cond_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_5

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    if-nez v3, :cond_1

    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const-string v3, "pref_camera_image_ratio"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v3, "HTCCamera"

    const-string v3, "Reset View: gridview_wide_landscape"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v3, "HTCCamera"

    const-string v3, "Reset View: Grid Visible"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_3
    const-string v3, "pref_grid"

    invoke-static {p0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_4
    const-string v3, "HTCCamera"

    const-string v3, "Reset View: gridview_4by3_landscape"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mGridLayout:Landroid/view/View;

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const-string v3, "HTCCamera"

    const-string v3, "Reset View: Grid InVisible"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private resetTapCapture(II)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/HTCCamera;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mStartTapCapture:Z

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusPos_X:I

    iput p2, p0, Lcom/android/camera/HTCCamera;->mFocusPos_Y:I

    return-void
.end method

.method private reset_surface_view(II)V
    .locals 5

    const/4 v4, -0x1

    const-string v3, "HTCCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset_surface_view before reset, lp.width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lp.height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "reset_surface_view - landscape"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    :cond_0
    :goto_0
    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset_surface_view lp width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lp Height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->requestLayout()V

    return-void

    :cond_1
    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    const-string v1, "HTCCamera"

    const-string v1, "reset_surface_view - portrait"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v1, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceWidth:I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    goto :goto_0
.end method

.method private restoreVolume()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v5, "HTCCamera"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-eq v1, v3, :cond_0

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore AudioManager.STREAM_ALARM, mOriginalVolume_Alarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    :cond_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-eq v1, v3, :cond_1

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore AudioManager.STREAM_RING, mOriginalVolume_Ring = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v3, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    :cond_1
    return-void
.end method

.method private rotateOnScreenCameraSwitchButton(IZ)V
    .locals 10

    const v9, 0x7f0b0071

    const v8, 0x7f0b0070

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/16 v7, 0x190

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    :cond_2
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0x7f0b0074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0x7f0b007a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v3, 0x7f0b0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0x7f0b0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const v3, 0x7f0b0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v3, 0x7f0b007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1
.end method

.method private final saveSDCardState()V
    .locals 2

    const-string v0, "pref_sdcard_state"

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getSDCardState()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private sendFocusMessage(II)V
    .locals 4

    const/16 v3, 0x24

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v1, v1

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method private setLayoutForRecordIcon(ZII)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    if-nez p2, :cond_3

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    const v1, 0x7f0b00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_6
    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1
.end method

.method private setLayoutForTimer(ZII)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_6

    if-nez p2, :cond_3

    const v1, 0x7f0b00b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    const v1, 0x7f0b00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1

    :cond_6
    const v1, 0x7f0b00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    const v1, 0x7f0b00b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    goto :goto_1
.end method

.method private setLayoutPosition(Lcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_TOP:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCENE_INDICATOR_RIGHT:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setMaxBrightness()V
    .locals 5

    const-string v2, "HTCCamera"

    const-string v3, "setMaxBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setOldBrightness()V
    .locals 5

    const-string v2, "HTCCamera"

    const-string v3, "setOldBrightness()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm:ss SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "########## HtcSettingsReceiver ##########"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) onReceive-start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setPanelVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/SlidingDrawer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method private setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V
    .locals 10

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p2, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v6, 0x7f0b00de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f0b00df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v6, 0x7f0b00e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v6, 0x7f0b00e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {v4, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v6, 0x7f0b00e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f0b00e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0b00e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v4, v8, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const v6, 0x7f0b00e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private setTipTextPosition(ILandroid/widget/RelativeLayout;)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x46

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method public static declared-synchronized setWaitKeyguardBeforePreview(Z)V
    .locals 2

    const-class v0, Lcom/android/camera/HTCCamera;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showArrowLayout(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/camera/HTCCamera$30;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$30;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutPort:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowImgLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mArrowTextLayoutLand:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private showHDRSceneGuide()V
    .locals 6

    const/16 v5, 0x55

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f080151

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080157

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private showLandscapeSceneGuide()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f080153

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f08015a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08015b

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08015d

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08015c

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFront_land:Landroid/widget/RelativeLayout;

    const v2, 0x7f08015e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f08015f

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080161

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v3, 0x7f080160

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFront_port:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->init_swing()V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f080155

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080162

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080164

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f080165

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/camera/HTCCamera;->CHECK_SWING_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private showPortraitSceneGuide()V
    .locals 6

    const/16 v5, 0x4a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f08014d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080166

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private showSceneIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSelfPortraitHint()V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v3, 0x7f08017b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f08017e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f08017f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSelfPortraitHint(I)V

    goto :goto_0
.end method

.method private showSunNightSceneGuide()V
    .locals 6

    const/16 v5, 0x4b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    const v3, 0x7f08014f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080170

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-static {v2, v5, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_0
.end method

.method private showTimerBase(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    const v1, 0x7f08003b

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f08018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateTimerBase()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showZoomBar(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-gtz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->initZoomBar()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v2, :cond_2

    sget v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_3

    sget v0, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/16 v5, 0x12c

    invoke-static {v2, v3, v4, v6, v5}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_4
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startFocusFromLongPressKey()V
    .locals 4

    const/16 v3, 0x1f

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-ne v0, v2, :cond_2

    sget v0, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sget v1, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->quickFocus()Z

    move-result v0

    if-eq v0, v2, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->handleSensorFocus()V

    goto :goto_0
.end method

.method private startRotateAnimation(FF)V
    .locals 7

    const/4 v6, 0x1

    const/16 v4, 0x190

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRotateAnimation from_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to_degree = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    const/4 v1, 0x0

    sub-float v2, p2, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_8
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_combine:Landroid/view/View;

    move v1, p1

    move v2, p2

    move v5, v6

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->showRotateAnimation(Landroid/view/View;FFIIZ)Landroid/view/animation/RotateAnimation;

    goto :goto_0
.end method

.method private startSceneSelector()V
    .locals 6

    const-string v5, "scene_selector_mode"

    const-string v4, "HTCCamera"

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "HTCCamera"

    const-string v2, "Start - Go to Scene Selector"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/camera/sceneselector/SceneSelectorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "default_position"

    iget v3, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->mapSceneNumToSelector(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "scene_selector_mode"

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start - Go to Scene Selector : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "scene_selector_mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private stopNotesRecording()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.notes.notesrecordingstopped"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "stoprecord"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private stopRecordingIndicator()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "stopRecordingIndicator()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->hideTimerBase(Z)V

    return-void
.end method

.method private stopSoundPool()V
    .locals 4

    const-string v3, "HTCCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "stopSoundPool() - mSoundPool = null"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/camera/HTCCamera;->mStreamID_beep2:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "HTCCamera"

    const-string v1, "stopSoundPool() failed!!"

    invoke-static {v3, v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private swing()V
    .locals 12

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v11

    if-eqz v11, :cond_0

    const/4 v2, 0x2

    if-ne v11, v2, :cond_8

    :cond_0
    const/4 v10, 0x0

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x5a

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x10e

    if-lt v2, v3, :cond_6

    :cond_1
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x10e

    if-lt v2, v3, :cond_5

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x10e

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    :goto_0
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    :cond_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    :cond_3
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->image_shift_ratio:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/camera/HTCCamera;->From_ratio_port:F

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->animation_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/android/camera/HTCCamera$41;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$41;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFront_port:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->SWING_STABLE_THRESHOLD:I

    if-gt v10, v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4e

    const-wide/16 v4, 0x12c

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/camera/HTCCamera;->CHECK_SWING_DURATION:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    add-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0xb4

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v2, 0x10e

    iget v3, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_port:F

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mbackIcon_port:Landroid/widget/ImageView;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    const v3, 0x7f0a0170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_port:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL_PORT:Z

    goto :goto_1

    :cond_8
    const/4 v2, 0x1

    if-eq v11, v2, :cond_9

    const/4 v2, 0x3

    if-ne v11, v2, :cond_4

    :cond_9
    const/4 v10, 0x0

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x167

    if-gt v2, v3, :cond_c

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0xb4

    if-lt v2, v3, :cond_c

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x10e

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v2, 0x168

    iget v3, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    :goto_2
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/camera/HTCCamera;->leftBound_ratio:F

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    :cond_a
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/android/camera/HTCCamera;->rightBound_ratio:F

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    :cond_b
    iget v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    iget v3, p0, Lcom/android/camera/HTCCamera;->image_shift_ratio:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/camera/HTCCamera;->From_ratio_land:F

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->animation_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/android/camera/HTCCamera$42;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$42;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFront_land:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->SWING_STABLE_THRESHOLD:I

    if-gt v10, v2, :cond_d

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4d

    const-wide/16 v4, 0x12c

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_1

    :cond_c
    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    const/16 v3, 0x5a

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/16 v2, 0xb4

    iget v3, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/HTCCamera;->SWING_STEP:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/HTCCamera;->To_ratio_land:F

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x4c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mbackIcon_land:Landroid/widget/ImageView;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipText:Landroid/widget/TextView;

    const v3, 0x7f0a0170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mfrontIcon_land:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIS_LEVEL:Z

    goto/16 :goto_1
.end method

.method private switch3DMode()V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "pref_camera_3D_status"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "3DMode.Switched"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    const-string v0, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-ne v0, v3, :cond_3

    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v4, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->hideZoomBar(Z)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DPreviewReady:Z

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "true"

    invoke-static {v0, v2, v3, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_3
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_1

    :cond_3
    const-string v0, "pref_camera_3D_status"

    invoke-static {p0, v4, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_3
.end method

.method private threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private togglePanelState()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v1, "togglePanelState() - failed, mPanel is not visible"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->updateDisableItems()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateToggle()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus()V

    goto :goto_0
.end method

.method private triggerRecord()V
    .locals 8

    const/16 v3, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - start"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v1, v4, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - end, UI Block !!!"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - end, action screen open !!!"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v1, v4, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - end, 3D portrait capture !!!"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v1}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x50

    const v3, 0x7f0a0038

    invoke-static {v1, v2, v3, v0, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]recording"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v1}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v1

    if-eq v1, v4, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v1, "low internal storage ..."

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    const v3, 0x104032c

    invoke-static {v1, v2, v3, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_5
    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    const-wide/16 v3, 0xc8

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - end, PowerWarning !!!"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    const-string v1, "HTCCamera"

    const-string v1, "Block Capture UI - Start Recorder"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-object v7, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v6, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "TriggerRecord.Started"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mEffect_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mEffect_btn:Landroid/widget/Button;

    invoke-static {v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :cond_9
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    :cond_a
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v1, "HTCCamera"

    const-string v1, "Freeze UI - Recorder"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iget v1, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    :goto_1
    const-string v1, "HTCCamera"

    const-string v1, "triggerRecord() - end"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "[ANALYTIC_com.android.camera]"

    const-string v2, "[press_jogball]stop_record"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    const-string v1, "Block Capture UI - Stop Recorder"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v6, v6, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopRecordingIndicator()V

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "TriggerRecord.Stopped"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private triggerTakePicture()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v7, "HTCCamera"

    const-string v2, "[ANALYTIC_com.android.camera]"

    const-string v3, "[press_jogball]take_picture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HTCCamera"

    const-string v2, "triggerTakePicture() - start"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v2, v4, :cond_1

    const-string v2, "HTCCamera"

    const-string v2, "triggerTakePicture() - end, UI Block !!!"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v2}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v2, v4, :cond_3

    const-string v2, "HTCCamera"

    const-string v2, "triggerTakePicture() - end, 3D portrait capture !!!"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v2}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x50

    const v4, 0x7f0a0038

    invoke-static {v2, v3, v4, v0, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "HTCCamera"

    const-string v2, "low internal storage ..."

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    const v4, 0x104032c

    invoke-static {v2, v3, v4, v6, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v2, "HTCCamera"

    const-string v2, "low internal storage - mFocusingState = NO_FOCUSING"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    sget v2, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xf

    const-wide/16 v4, 0xc8

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v2, "HTCCamera"

    const-string v2, "Storage_Status != STORAGE_OK - mFocusingState = NO_FOCUSING"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "HTCCamera"

    const-string v2, "triggerTakePicture() - end, PowerWarning !!!"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    const-string v2, "HTCCamera"

    const-string v2, "Block Capture UI - Take Picture"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    if-gtz v1, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v2}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    :cond_a
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v5, :cond_c

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    :cond_c
    if-lez v1, :cond_f

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v2, v5, :cond_e

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    invoke-direct {p0, v4}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v6, v4}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    :cond_e
    :goto_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v5, v6, v6, v8}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "HTCCamera"

    const-string v2, "triggerTakePicture() - end"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v2, v5, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v2, "HTCCamera"

    const-string v2, "Freeze UI - Take Picture"

    invoke-static {v7, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    goto :goto_1
.end method

.method private updateCaptureIcon(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p1, :cond_1

    const/high16 v2, 0x7f0a

    const v3, 0x7f020146

    invoke-static {p0, v2, v3}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020147

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020127

    iput v2, p0, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    if-nez p1, :cond_3

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b00b1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0b00b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private updateFocusView(II)V
    .locals 11

    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->initFocusView()V

    sput p1, Lcom/android/camera/HTCCamera;->mFocus_Screen_X:I

    sput p2, Lcom/android/camera/HTCCamera;->mFocus_Screen_Y:I

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/HTCCamera;->mCanShowFocusView:Z

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_0

    div-int/lit8 v9, v1, 0x2

    sub-int v3, p1, v9

    div-int/lit8 v9, v0, 0x2

    sub-int v5, p2, v9

    sub-int v9, v8, p1

    div-int/lit8 v10, v1, 0x2

    sub-int v4, v9, v10

    sub-int v9, v7, p2

    div-int/lit8 v10, v0, 0x2

    sub-int v2, v9, v10

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v9, 0x9

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xa

    const/4 v10, -0x1

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v6, v3, v5, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v9, "HTCCamera"

    const-string v10, "updateFocusView - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/camera/DisplayDevice;->getFocusWidth(Landroid/content/Context;)I

    move-result v0

    goto/16 :goto_0
.end method

.method private updateFreeCount()V
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "HTCCamera"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v4

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v4, "HTCCamera"

    const-string v4, "support no sdcard, not need to update free count"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    const v5, 0x7f080179

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    :cond_1
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    const v5, 0x7f080147

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    :cond_2
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    const v5, 0x7f080146

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    :cond_3
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Remaining:Lcom/android/camera/rotate/RotateLinearLayout;

    invoke-virtual {v4, v6}, Lcom/android/camera/rotate/RotateLinearLayout;->setOrientation(I)V

    :cond_5
    sget v4, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v4, :cond_6

    sget v4, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v4, v4, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v0

    cmp-long v4, v0, v10

    if-ltz v4, :cond_7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :cond_7
    :goto_1
    if-eqz v2, :cond_b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_9

    const-string v4, "HTCCamera"

    const-string v4, "Request from mms, not need to update free length"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_a

    const-string v4, "HTCCamera"

    const-string v4, "Request from Notes, not need to update free length"

    invoke-static {v7, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    invoke-virtual {v4, p0}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    invoke-virtual {v4, v8}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v0

    cmp-long v4, v0, v10

    if-ltz v4, :cond_7

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->getTimeString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mRemainingText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateModeIcon(I)V
    .locals 5

    const v4, 0x7f0a014f

    const v3, 0x7f0a014e

    const v2, 0x7f02006d

    const v1, 0x7f020047

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p1, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Mail:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->FriendStream:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_8
    if-nez p1, :cond_a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPhoto_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPhoto_btn:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMode_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_text_ds:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method private updateRecordingTimerOrientation()V
    .locals 1

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->updateRecordingTimerOrientation(I)V

    return-void
.end method

.method private updateRecordingTimerOrientation(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    :cond_0
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v3, v0

    const v4, 0x7f0b0085

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v3, 0x7f0b0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v3, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    move-object v3, v0

    const v4, 0x7f0b0086

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const v3, 0x7f0b0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v3, 0x7f0b0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method private updateRotateViews(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateToast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBarIn:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateImageView;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mZoomBarOut:Lcom/android/camera/rotate/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method private updateSceneGuide(I)V
    .locals 7

    const/16 v4, 0x3a

    const/4 v3, 0x0

    const-string v6, "auto"

    const-string v5, "action"

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideAllScene()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    packed-switch p1, :pswitch_data_1

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const-string v0, "auto"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    :goto_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v4, v3, v3, v0}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "night"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->disableFlash()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSunNightSceneGuide()V

    goto :goto_1

    :pswitch_3
    const-string v0, "action"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_4
    const-string v0, "flowers"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_5
    const-string v0, "portrait"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_6
    const-string v0, "auto"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enableFlash()V

    goto :goto_1

    :pswitch_7
    const-string v1, "Panorama UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterPanoramaMode()V

    goto :goto_0

    :pswitch_8
    const-string v1, "HDR UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HdrUI;

    invoke-virtual {v1}, Lcom/android/camera/component/HdrUI;->isHdrModeEntered()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "auto"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "auto"

    invoke-static {v1, v4, v3, v3, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterHdrMode()V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showHDRSceneGuide()V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->updateSceneGuideOrientation(I)V

    goto :goto_0

    :pswitch_9
    const-string v1, "Burst UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->isBurstModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "action"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "action"

    invoke-static {v1, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterBurstMode()V

    goto/16 :goto_0

    :pswitch_a
    const-string v1, "Happy Shot UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/HappyShotUI;

    invoke-virtual {v1}, Lcom/android/camera/component/HappyShotUI;->isHappyShotModeEntered()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "action"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "action"

    invoke-static {v1, v4, v3, v3, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->enterHappyShotMode()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private updateSceneGuideOrientation(I)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSceneGuideOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScenePortraitLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneSunNightLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneHDRLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setSceneGuidePosition(ILcom/android/camera/rotate/RotateRelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeTipTextLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/HTCCamera;->setTipTextPosition(ILandroid/widget/RelativeLayout;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-ne p1, v4, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_1
.end method

.method private updateSelfPortraitHint(I)V
    .locals 8

    const/16 v7, 0xe

    const/16 v6, 0xb

    const/16 v5, 0x9

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSelfPortraitHint_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SelfPortrait:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    :pswitch_0
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_1
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    :goto_2
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_2

    :pswitch_3
    iget v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHeight:I

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasPreviewFilterLayout()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    :goto_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v1, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private updateSwitchIcon(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    invoke-static {v1, v2, v3}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    const v2, 0x7f020163

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    const v2, 0x7f020041

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private updateThumbnailButton(Landroid/graphics/Bitmap;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ThumbnailController;->setData(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mThumbController:Lcom/android/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/android/camera/ThumbnailController;->updateDisplayIfNeeded()V

    return-void
.end method

.method private updateTimerBase()V
    .locals 3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/camera/DisplayDevice;->getRecordingTimerBaseHeight(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mTimerBase:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateVirtualHwKeysOrientation(IZ)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.content.intent.action.ORIENTATION_LIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "package_name"

    const-string v3, "com.android.camera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "manual"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateZoomBarVisible()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->hideZoomBar(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/HTCCamera;->showZoomBar(Z)V

    goto :goto_0
.end method


# virtual methods
.method public IsFirstTimeLaunch()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "pref_first_time_launch"

    const-string v0, "pref_first_time_launch"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->ContainsKey(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "pref_first_time_launch"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public PlaySound(I)V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v11, 0x2

    const-string v10, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "PlaySound() - start"

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "mIsUIReady = false - PlaySound return"

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v0, "PlaySound() - mAudioPlayer == null"

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    const-string v0, "HTCCamera"

    const-string v1, "PlaySound() - set data source"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    const-string v0, "HTCCamera"

    const-string v1, "PlaySound() - StreamType : STREAM_ALARM"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v11, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    const-string v0, "HTCCamera"

    const-string v0, "Set stream volume"

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    iget v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    if-ne v0, v13, :cond_8

    iget v0, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    if-ne v0, v12, :cond_5

    iget v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOriginalVolume_Alarm = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Alarm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-direct {p0, v6}, Lcom/android/camera/HTCCamera;->getAdjustedVolume(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "HTCCamera"

    const-string v0, "PlaySound() - end"

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    const-string v0, "HTCCamera"

    const-string v1, "PlaySound() - StreamType : STREAM_RING"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    const-string v0, "HTCCamera"

    const-string v0, "PlaySound failed"

    invoke-static {v10, v0, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    if-ne v0, v12, :cond_5

    iget v0, p0, Lcom/android/camera/HTCCamera;->mAudioStreamType:I

    invoke-virtual {v8, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOriginalVolume_Ring = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mOriginalVolume_Ring:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public RequestVideoQualityLevel()I
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "isRequestHighQualityVideo() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/IntentManager$RequestName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-static {}, Lcom/android/camera/IntentManager;->IsHighVideoQuality()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public activate()V
    .locals 6

    const/16 v5, 0x24

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "activate!!!!"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v0, "activate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v0, "activate - mUIHandler = null"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_3

    const-string v0, "HTCCamera"

    const-string v0, "activate in mIdle == false"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const-string v0, "HTCCamera"

    const-string v0, "Block Capture UI - activate!!!!"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v3, v4, v3, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v1, v1

    invoke-static {v0, v5, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_0
.end method

.method public canSensorFocus()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "pref_camera_auto_focus"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mEnableSensorFocus:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    if-ne v1, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public canTriggerFocus()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-eq v0, v2, :cond_5

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v2, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 6

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/16 v5, 0x1f

    const/4 v2, 0x0

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "cancelAutoFocus() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "cancelAutoFocus() return - DisplayDevice.canCancelFocus() = false"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eq v0, v1, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "cancelAutoFocus() return - mFocusingState != FOCUSING_NO_ACTION"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    sput-boolean v2, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0, v2}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_2
    iput v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v5, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v0, "HTCCamera"

    const-string v0, "cancelAutoFocus() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final changeZoom(I)V
    .locals 2

    const-string v1, "HTCCamera"

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "Zoom is locked"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "There is no camera thread"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto :goto_0
.end method

.method public changetoCameraMode()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "Change mode to Camera"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "Change mode to Camera - but current mode is Camera !!"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "changetoCameraMode() - set mWaitResetSettings to true"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    invoke-direct {p0, v3, v5}, Lcom/android/camera/HTCCamera;->changeIndicatorLayout(IZ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

.method public changetoVideoMode()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "Change mode to Video"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "Change mode to Video - but current mode is Video !!"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-static {v0, v1, v4, v4, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v0}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_3
    const-string v0, "HTCCamera"

    const-string v0, "changetoVideoMode() - set mWaitResetSettings to true"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateModeIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateCaptureIcon(I)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    invoke-direct {p0, v3, v3}, Lcom/android/camera/HTCCamera;->changeIndicatorLayout(IZ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public checkCamcorderButtonRecord()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    :cond_0
    return-void
.end method

.method public checkInternalStorage()Z
    .locals 13

    const/4 v12, 0x0

    const-string v11, "HTCCamera"

    const-string v8, "HTCCamera"

    const-string v8, "Check Internal Storage"

    invoke-static {v11, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    mul-long v6, v0, v2

    const-string v8, "HTCCamera"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v8, 0x100000

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    move v8, v12

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v4, v8

    const-string v8, "HTCCamera"

    const-string v8, "catch - checkInternalStorage with exception: "

    invoke-static {v11, v8, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v8, v12

    goto :goto_0
.end method

.method public final closeActionScreen()V
    .locals 3

    const-string v2, "HTCCamera"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "No action screen to close"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actionscreen/ActionScreen;->close(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCloseActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    const-string v0, "HTCCamera"

    const-string v0, "Cannot close action screen because there is no handler"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public closeAllExtensionMenus()V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus(I)V

    return-void
.end method

.method public closeAllExtensionMenus(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SlidingMenu;->close(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/android/camera/widget/SlidingMenu;->close(I)V

    :cond_1
    return-void
.end method

.method public closeSettingsPanel()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "deactivate!!!!"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "HTCCamera"

    const-string v1, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "deactivate - mUIHandler = null"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v1, v4, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "deactivate in mIdle = true"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-nez v1, :cond_4

    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    new-instance v2, Lcom/android/camera/HTCCamera$47;

    invoke-direct {v2, p0}, Lcom/android/camera/HTCCamera$47;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const v2, 0x7f080171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_6

    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0122

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveTextContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    sput v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v2, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScreensaveText:Landroid/widget/TextView;

    const v2, 0x7f0a011f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public final disableFlash()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public disableTouchAEC()V
    .locals 2

    const/16 v1, 0x1f

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x24

    const/16 v4, 0x16

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v1, v1

    invoke-static {v0, v5, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x50

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x24

    const/16 v4, 0x16

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v1, v1

    invoke-static {v0, v5, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-static {v0, v4, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsTouchScreen:Z

    goto :goto_1
.end method

.method public doOnPause()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x4

    const-string v4, "HTCCamera"

    const-string v1, "HTCCamera"

    const-string v1, "doOnPause() - start"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mCurrentDialog:Landroid/app/Dialog;

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/GpuEffectController;->pause()V

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_Recording:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_7
    invoke-direct {p0, v5}, Lcom/android/camera/HTCCamera;->hideTimerBase(Z)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->resetFocusView()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPreviewDuplicate:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iput-object v3, v1, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_9
    const-string v1, "HTCCamera"

    const-string v1, "OnPause - hide UI, set mMainLayout invisible"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_b
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->clearAnimation()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_d
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v1}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    :cond_e
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPartitonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSIPReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_10
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v1}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    :cond_11
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v1}, Lcom/android/camera/FlashRestriction;->releaseFlashRestriction()V

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    :cond_12
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->releaseSoundPool()V

    const-string v1, "HTCCamera"

    const-string v1, "doOnPause() - end"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "HTCCamera"

    const-string v1, "unregisterReceiver failed!!"

    invoke-static {v4, v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public effectSwitchCamera()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController;->effectSwitchCamera()V

    :cond_0
    return-void
.end method

.method public final enableFlash()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    goto :goto_0
.end method

.method public enableGeoTagging(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->startReceivingLocationUpdates()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->stopReceivingLocationUpdates()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hide_gps_indicator()V

    goto :goto_0
.end method

.method public final enterBurstMode()V
    .locals 1

    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->enterBurstMode()V

    return-void
.end method

.method public final enterHappyShotMode()V
    .locals 1

    const-string v0, "Happy Shot UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/HappyShotUI;

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->enterHappyShotMode()V

    return-void
.end method

.method public final enterHdrMode()V
    .locals 1

    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->enterHdrMode()V

    return-void
.end method

.method public final enterPanoramaMode()V
    .locals 1

    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->enterPanoramaMode()V

    return-void
.end method

.method public final exitBurstMode()V
    .locals 1

    const-string v0, "Burst UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/BurstUI;

    invoke-virtual {p0}, Lcom/android/camera/component/BurstUI;->exitBurstMode()V

    return-void
.end method

.method public final exitHappyShotMode()V
    .locals 1

    const-string v0, "Happy Shot UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/HappyShotUI;

    invoke-virtual {p0}, Lcom/android/camera/component/HappyShotUI;->exitHappyShotMode()V

    return-void
.end method

.method public final exitHdrMode()V
    .locals 1

    const-string v0, "HDR UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/HdrUI;

    invoke-virtual {p0}, Lcom/android/camera/component/HdrUI;->exitHdrMode()V

    return-void
.end method

.method public final exitPanoramaMode()V
    .locals 1

    const-string v0, "Panorama UI"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object p0

    check-cast p0, Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {p0}, Lcom/android/camera/component/PanoramaUI;->exitPanoramaMode()V

    return-void
.end method

.method public final getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    return-object v0
.end method

.method public final getAudioManager()Landroid/media/AudioManager;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    return v0
.end method

.method public getCameraLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getCameraThread()Lcom/android/camera/CameraThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getFaceNumber()I
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    goto :goto_0
.end method

.method public getFlashRestriction()Lcom/android/camera/FlashRestriction;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    return-object v0
.end method

.method public getFocusingState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return v0
.end method

.method public getFreezeOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    return v0
.end method

.method public getGpuEffectContr()Lcom/android/camera/GpuEffectController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    return-object v0
.end method

.method public getLastOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    return v0
.end method

.method public getMainBarLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMainLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method public getPrefSceneType(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "pref_camera_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "pref_video_scene"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewSurfaceHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreviewSurfaceWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRecordLimitCheck:Lcom/android/camera/RecordLimitCheck;

    return-object v0
.end method

.method public getRecordMS()J
    .locals 4

    iget-wide v0, p0, Lcom/android/camera/HTCCamera;->mRecord_sec:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getRequestMode()Lcom/android/camera/IntentManager$RequestMode;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "getRequestMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    goto :goto_0
.end method

.method public getRequestName()Lcom/android/camera/IntentManager$RequestName;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "getRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    goto :goto_0
.end method

.method public getReviewDuration()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    return v0
.end method

.method public getSecondLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    return-object v0
.end method

.method public final getSelfTimerInterval()I
    .locals 2

    const-string v1, "pref_camera_self_timer"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    return v1

    :cond_0
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getUpperLayout()Landroid/view/ViewGroup;
    .locals 2

    const v1, 0x7f08002d

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V
    .locals 3

    const/4 v1, 0x1

    const-string v2, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "handleFaceFocus() - start"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    const-string v0, "Block Capture UI - take focus start"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget v0, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    iget-short v0, p1, Lcom/android/camera/FaceDetection$Face;->focus_X:S

    iget-short v1, p1, Lcom/android/camera/FaceDetection$Face;->focus_Y:S

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    iget-object v0, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/FaceDetection$Face;->range:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/HTCCamera;->sendFocusMessage(II)V

    const-string v0, "HTCCamera"

    const-string v0, "handleFaceFocus() - end"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleTouchFocus(II)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "HTCCamera"

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchFocus - X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "handleTouchFocus - mSurfaceView = null"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchFocus - mSurfaceView left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchFocus - mSurfaceView top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "handleTouchFocus - touch point not in mSurfaceView"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    goto :goto_0

    :cond_1
    const-string v1, "HTCCamera"

    const-string v1, "Block Capture UI - take focus start"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v1}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    :cond_2
    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "take focus - mFocusingState = FOCUSING_NO_ACTION"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x25

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mToast:Lcom/android/camera/rotate/RotateToast;

    invoke-virtual {v1}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    :cond_4
    sput v4, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-direct {p0, p1, p2}, Lcom/android/camera/HTCCamera;->updateFocusView(II)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/HTCCamera;->mapFocusPoint_Screen2Preview(IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v1, v4}, Lcom/android/camera/SensorHandler;->setTouchThreshold(Z)V

    :cond_5
    move v1, v4

    goto/16 :goto_0
.end method

.method public final hasFlash()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasModeExtensionMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOnScreenCameraSwitchButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviewFilterLayout()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpecificEffect()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController;->hasEffectControl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSwitchButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_btn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideEffectControl()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/GpuEffectController;->hideEffectControl()V

    :cond_0
    return-void
.end method

.method public hideRemainingLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mRemainingLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method

.method public hideZoomBar(Z)V
    .locals 7

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x12c

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    if-eqz v2, :cond_3

    sget v0, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_0

    sget v0, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRotateLayout_SwitchBtn:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v2, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public hide_gps_indicator()V
    .locals 0

    return-void
.end method

.method public initFocusView()V
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    if-eqz v2, :cond_1

    const-string v2, "HTCCamera"

    const-string v3, "mFocusAnimation != null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f080036

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/camera/widget/CameraFocusWidget;

    invoke-direct {v2, p0}, Lcom/android/camera/widget/CameraFocusWidget;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mFocusAnimation:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    :cond_3
    const v2, 0x7f080034

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f080094

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusingView:Landroid/widget/ImageView;

    const v2, 0x7f080095

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/HTCCamera;->mivFocusedView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public init_swing()V
    .locals 8

    const-wide/high16 v4, 0x403e

    iget v6, p0, Lcom/android/camera/HTCCamera;->SWING_LIMIT_RATIO:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v0, v4

    const/16 v1, 0x18

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSceneLandscapePortLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x3f00

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/HTCCamera;->image_shift_ratio:F

    new-instance v4, Lcom/android/camera/HTCCamera$43;

    invoke-direct {v4, p0}, Lcom/android/camera/HTCCamera$43;-><init>(Lcom/android/camera/HTCCamera;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    return-void
.end method

.method public final is3DCameraActivated()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final isActionScreenOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCaptureTask()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return v0
.end method

.method public isBlockCaptureUI()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return v0
.end method

.method public isBlockPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return v0
.end method

.method public final isCameraThreadRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCameraThreadRunning:Z

    return v0
.end method

.method public isCancelFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    return v0
.end method

.method public isCaptureTriggered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    return v0
.end method

.method public final isCaptureUIOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    return v0
.end method

.method public final isEffectPanelOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v0}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v0

    goto :goto_0
.end method

.method public final isFlashEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v0}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isMenuMoving()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuMoving()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMenuOpen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isOrientationLockNeeded()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "Panorama UI"

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PanoramaUI;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaUI;->isPanoramaModeEntered()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->isNonLandscapeSupported()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPanelReady()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isPanelVisible()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    return v0
.end method

.method public isPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return v0
.end method

.method public final isPreviewStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "isRequestMode() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestMode:Lcom/android/camera/IntentManager$RequestMode;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "isRequestName() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v0, v0, Lcom/android/camera/IntentManager;->mRequestName:Lcom/android/camera/IntentManager$RequestName;

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final isRequestSquare()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSelfTimerOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isServiceMode()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTurnOnTorch()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_0
.end method

.method public isUIFreeze()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    return v0
.end method

.method public isUIReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    return v0
.end method

.method public final isUnknownServiceMode()Z
    .locals 1

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    return v0
.end method

.method public final isZoomLockNeeded()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/camera/ConditionalQueryEvent;

    const-string v1, "Query.IsZoomLockNeeded"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/camera/ConditionalQueryEvent;-><init>(Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    return v0
.end method

.method public final lockOrientation()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iget v0, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    iput v0, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockOrientation(I)V
    .locals 4

    const/4 v2, -0x1

    const-string v3, "HTCCamera"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    :cond_1
    if-ne p1, v2, :cond_2

    const-string v0, "HTCCamera"

    const-string v0, "unlock UI orientation"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    :goto_0
    return-void

    :cond_2
    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock UI orientation in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onRotateChanged(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    goto :goto_0
.end method

.method public final lockZoom()V
    .locals 5

    const/4 v3, 0x1

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "lockZoom() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-eqz v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "Zoom is already be locked"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isZoomRangeRetrieved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMinimumZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateZoomBarVisible()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v0, "HTCCamera"

    const-string v0, "lockZoom() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "HTCCamera"

    const-string v0, "There is no camera thread"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mapSceneNumFromSelector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return p1

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public mapSceneNumToSelector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return p1

    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x2

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public final needsActionScreen()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "HTCCamera"

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const-string v1, "pref_camera_review_duration"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 2 seconds"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "3s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 3 seconds"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_4
    const-string v1, "5s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 5 seconds"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_5
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 10 seconds"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v2

    goto :goto_0

    :cond_6
    const-string v1, "no_limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is no limit"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_7
    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is no review"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0
.end method

.method public needsReview()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "HTCCamera"

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "not requested from album - Review is off"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v1, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "self portrait - Review is no limit"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v1, "pref_camera_review_duration"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 2 seconds"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v3

    goto :goto_0

    :cond_2
    const-string v1, "3s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 3 seconds"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v3

    goto :goto_0

    :cond_3
    const-string v1, "5s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 5 seconds"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v3

    goto :goto_0

    :cond_4
    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is 10 seconds"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/camera/HTCCamera;->mReviewDuration:I

    move v1, v3

    goto :goto_0

    :cond_5
    const-string v1, "no_limit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is no limit"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_6
    const-string v1, "HTCCamera"

    const-string v1, "advanced settings - Review is no review"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v4

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v3, -0x1

    const-string v4, "HTCCamera"

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3, p3}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :pswitch_2
    const-string v1, "selected_scene"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get scene_num from SceneSelector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->mapSceneNumFromSelector(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_camera_scene_ds"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    goto :goto_0

    :cond_1
    const-string v1, "pref_camera_scene_service_ds"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    const-string v2, "HTCCamera"

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged LANDSCAPE"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged PORTRAIT"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% onConfigurationChanged Other"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "pref_camera_3D_status"

    const-string v10, "HTCCamera"

    const-string v9, "none"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    const-string v4, "[ANALYTIC_com.android.camera]"

    const-string v5, "[press_widget]launch"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "HTCCamera"

    const-string v4, "onCreate()"

    invoke-static {v10, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const-wide/32 v5, 0x800000

    invoke-virtual {v4, v5, v6}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->requestWindowFeature(I)Z

    const v4, 0x7f030009

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->setContentView(I)V

    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceView;

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v4}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance v4, Lcom/android/camera/HTCCamera$MainHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/camera/CameraThread;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/CameraThread;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    new-instance v4, Lcom/android/camera/IntentManager;

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {v4, p0, v5}, Lcom/android/camera/IntentManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v4}, Lcom/android/camera/CameraThread;->start()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->FriendStream:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v7, :cond_0

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    :cond_0
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-boolean v4, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v4, :cond_13

    iput v7, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    :goto_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v5, v4, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    iget v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v4, v7, :cond_14

    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v11, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_1
    const-string v4, "HTCCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial m3DButtonStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v4, 0x3e9

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    :cond_2
    const-string v4, "pref_camera_switch"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_front_camera_mode"

    invoke-static {p0, v4, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_camera_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_video_effect"

    const-string v5, "none"

    invoke-static {p0, v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-ne v4, v7, :cond_3

    const-string v4, "pref_camera_effect_manual"

    const-string v5, "none"

    invoke-static {p0, v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "pref_camera_self_portrait"

    invoke-static {p0, v4, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v4, "pref_camera_self_timer"

    const-string v5, "none"

    invoke-static {p0, v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_camera_face_number"

    const-string v5, "none"

    invoke-static {p0, v4, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "pref_camera_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v4, "pref_video_scene"

    const-string v5, "auto"

    invoke-static {p0, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    iput v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v4

    if-ne v4, v7, :cond_5

    new-instance v4, Lcom/android/camera/HTCCamera$8;

    invoke-direct {v4, p0, p0}, Lcom/android/camera/HTCCamera$8;-><init>(Lcom/android/camera/HTCCamera;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_5
    sput-boolean v7, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    sput-boolean v8, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_initOnCreate:Z

    iput-boolean v7, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/camera/EventManager;

    invoke-direct {v4, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v4, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/CommonActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/camera/component/ThumbnailController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/ThumbnailUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ThumbnailUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_6
    invoke-static {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/HwCameraSwitchButton;

    invoke-direct {v5, p0}, Lcom/android/camera/component/HwCameraSwitchButton;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_7
    invoke-static {p0}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/PanoramaUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/PanoramaUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_8
    invoke-static {p0}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/HdrUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/HdrUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_9
    invoke-static {p0}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/BurstUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/BurstUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_a
    invoke-static {}, Lcom/android/camera/component/HandShakeController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/HandShakeUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/HandShakeUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_b
    invoke-static {}, Lcom/android/camera/component/AutoSceneController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/AutoSceneUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/AutoSceneUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_c
    invoke-static {}, Lcom/android/camera/component/ZoomBarController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/ZoomBarUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ZoomBarUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_d
    invoke-static {}, Lcom/android/camera/component/DOTIndicatorController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/DOTIndicatorUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/DOTIndicatorUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_e
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/RemovableStorageWatcher;

    invoke-direct {v5, p0}, Lcom/android/camera/component/RemovableStorageWatcher;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/MediaScannerWatcher;

    invoke-direct {v5, p0}, Lcom/android/camera/component/MediaScannerWatcher;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/BatteryWatcher;

    invoke-direct {v5, p0}, Lcom/android/camera/component/BatteryWatcher;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    invoke-static {}, Lcom/android/camera/component/PowerWarningController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/PowerWarningUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/PowerWarningUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/ReviewAnimation;

    invoke-direct {v5, p0}, Lcom/android/camera/component/ReviewAnimation;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_10
    invoke-static {p0}, Lcom/android/camera/component/HappyShotController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/component/HappyShotUI;

    invoke-direct {v5, p0}, Lcom/android/camera/component/HappyShotUI;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_11
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "ActionScreen.Closed"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Ejected"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Mounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v5, "RemovableStorage.Unmounted"

    invoke-virtual {v4, v5, p0}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v5, 0x38

    const-wide/16 v6, 0x1388

    invoke-static {v4, v5, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->IsFirstTimeLaunch()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->startCameraTutorial()V

    :cond_12
    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v4

    iput v4, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_0

    :cond_14
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v11, v7}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v0, v4

    const-string v4, "HTCCamera"

    const-string v4, "registerReceiver failed!!"

    invoke-static {v10, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_15
    const-string v4, "pref_camera_3D_status"

    invoke-static {p0, v11, v8}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    :cond_16
    iget-object v4, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v5, Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct {v5, p0}, Lcom/android/camera/actionscreen/RequestActionScreen;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 6

    const/4 v3, 0x0

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "onDestroy() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v0, "[press_back]close"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/HTCCamera$31;

    invoke-direct {v1, p0}, Lcom/android/camera/HTCCamera$31;-><init>(Lcom/android/camera/HTCCamera;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "HTCCamera"

    const-string v0, "onDestroy() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[ANALYTIC_com.android.camera]"

    const-string v0, "[close_camera]complete"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->doOnDestory()V

    goto :goto_0
.end method

.method public final onEvent(Lcom/android/camera/Event;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/camera/Event;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionScreen.Closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Media.Saved"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast p1, Lcom/android/camera/MediaEvent;

    invoke-virtual {p0, p1}, Lcom/android/camera/HTCCamera;->onMediaSaved(Lcom/android/camera/MediaEvent;)V

    goto :goto_0

    :cond_2
    const-string v1, "RemovableStorage.Ejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageEjected()V

    goto :goto_0

    :cond_3
    const-string v1, "RemovableStorage.Mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageMounted()V

    goto :goto_0

    :cond_4
    const-string v1, "RemovableStorage.Unmounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->onRemovableStorageUnmounted()V

    goto :goto_0

    :cond_5
    const-string v1, "Zoom.Changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x25

    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "HTCCamera"

    new-instance v1, Lcom/android/camera/KeyEvent;

    const-string v5, "Key.Down"

    invoke-direct {v1, v5, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v5, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v1}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "HTCCamera"

    const-string v5, "KeyDown event is interrupted by event listener"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    :goto_0
    return v5

    :cond_0
    iget v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v5, v8, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    sget-boolean v5, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v5, v8, :cond_14

    const-string v5, "HTCCamera"

    const-string v5, "onKeyDown - UI Block !!!"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto :goto_0

    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    sput-boolean v8, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    goto :goto_1

    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_3

    sget-boolean v5, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-eqz v5, :cond_1

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v5, "HTCCamera"

    const-string v5, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v10, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v8

    goto :goto_0

    :cond_5
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    :cond_6
    :goto_2
    move v5, v8

    goto :goto_0

    :cond_7
    const-string v5, "HTCCamera"

    const-string v5, "Press Record when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    iput v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_8

    move v5, v8

    goto/16 :goto_0

    :cond_8
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_9

    sget-boolean v5, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v5, :cond_9

    const v3, 0x7f0a012b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v11}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v11, v3, v10, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v5, "HTCCamera"

    const-string v5, "UnBlock Capture UI - stop recorder and cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v10, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    if-ne v5, v8, :cond_b

    const-string v5, "HTCCamera"

    const-string v5, "onKeyDown, 3D portrait capture !!!"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p0, Lcom/android/camera/HTCCamera;->mLastOrientation:I

    invoke-static {v5}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x50

    const v7, 0x7f0a0038

    invoke-static {v5, v6, v7, v2, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    const-string v5, "HTCCamera"

    const-string v5, "Press Capture when focusing - mFocusingState = FOCUSING_PRESS_CAPTURE"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    iput v5, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mivGrid:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeCaptureUI()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v5, :cond_d

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v4

    if-lez v4, :cond_d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v10}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v10, v8}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    :cond_d
    :goto_3
    move v5, v8

    goto/16 :goto_0

    :cond_e
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    goto :goto_3

    :sswitch_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v5, v8, :cond_1

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    move v5, v8

    goto/16 :goto_0

    :sswitch_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v5, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v5, "HTCCamera"

    const-string v5, "UnBlock Capture UI - press back key and cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v10, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    :sswitch_6
    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v6, :cond_f

    move v5, v8

    goto/16 :goto_0

    :cond_f
    :sswitch_7
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_11

    :cond_10
    move v5, v8

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    if-nez v5, :cond_12

    move v5, v8

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v5

    if-ne v5, v8, :cond_13

    const-string v5, "HTCCamera"

    const-string v5, "control Zoom bar when focusing, cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v5, "HTCCamera"

    const-string v5, "UnBlock Capture UI - control Zoom bar and cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v10, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto/16 :goto_1

    :cond_13
    const-string v5, "HTCCamera"

    const-string v5, "control Zoom bar when focusing, but device can\'t cancel focus"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_14
    sparse-switch p1, :sswitch_data_1

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    :goto_4
    move v5, v8

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v5

    if-ne v5, v8, :cond_15

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->startFocusFromLongPressKey()V

    sput-boolean v8, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    :cond_15
    :goto_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_16

    move v5, v8

    goto/16 :goto_0

    :cond_16
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v5, v8, :cond_19

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_18

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v6, :cond_17

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_18

    :cond_17
    const-string v5, "HTCCamera"

    const-string v5, "screen save mode -- action key pressed so activate camera"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_18
    const-string v5, "HTCCamera"

    const-string v5, "save screen - block camcorder key"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_19
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    move v5, v8

    goto/16 :goto_0

    :cond_1a
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v5, v8, :cond_1b

    const-string v5, "HTCCamera"

    const-string v5, "SIP is shown, not handle center button"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_1b
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_1d

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v5

    if-eqz v5, :cond_1c

    move v5, v8

    goto/16 :goto_0

    :cond_1c
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    :goto_6
    move v5, v8

    goto/16 :goto_0

    :cond_1d
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v5, "Press camcorder button to start video recording"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_6

    :sswitch_a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1e

    move v5, v8

    goto/16 :goto_0

    :cond_1e
    :sswitch_b
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-ne v5, v8, :cond_21

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_20

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v6, :cond_1f

    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v5, v6, :cond_20

    :cond_1f
    const-string v5, "HTCCamera"

    const-string v5, "screen save mode -- action key pressed so activate camera"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    :cond_20
    const-string v5, "HTCCamera"

    const-string v5, "save screen - block capture key"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_21
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v5, :cond_22

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_22

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v5, v8

    goto/16 :goto_0

    :cond_22
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v5, v8, :cond_23

    const-string v5, "HTCCamera"

    const-string v5, "SIP is shown, not handle center button"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_23
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_25

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_24

    sget-boolean v5, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-nez v5, :cond_24

    const v3, 0x7f0a012b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v11}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v11, v3, v10, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_24
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v5, "Press center button to take picture"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerTakePicture()V

    :goto_7
    move v5, v8

    goto/16 :goto_0

    :cond_25
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v5, "Press center button to start video recording"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    goto :goto_7

    :sswitch_c
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    :goto_8
    move v5, v8

    goto/16 :goto_0

    :cond_26
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto :goto_8

    :cond_27
    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v6, :cond_28

    move v5, v8

    goto/16 :goto_0

    :cond_28
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v8

    goto/16 :goto_0

    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    if-eqz v5, :cond_2a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2c

    :cond_2a
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v5, :cond_2c

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->showZoomBar(Z)V

    :cond_2b
    :goto_9
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v6, "Zoom.Decreased"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_2c
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x37

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x37

    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v10, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_9

    :sswitch_e
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2e

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mSubMenu_layout:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    :goto_a
    move v5, v8

    goto/16 :goto_0

    :cond_2d
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto :goto_a

    :cond_2e
    sget-object v5, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->ActionKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-eq v5, v6, :cond_2f

    move v5, v8

    goto/16 :goto_0

    :cond_2f
    :sswitch_f
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->is3DCameraActivated()Z

    move-result v5

    if-eqz v5, :cond_30

    move v5, v8

    goto/16 :goto_0

    :cond_30
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_32

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    if-eqz v5, :cond_31

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mZoomLayout:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_33

    :cond_31
    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v5, :cond_33

    invoke-direct {p0, v8}, Lcom/android/camera/HTCCamera;->showZoomBar(Z)V

    :cond_32
    :goto_b
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v6, "Zoom.Increased"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_33
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x37

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x37

    invoke-static {v5, v6, v8, v10, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_b

    :sswitch_10
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-ne v5, v8, :cond_34

    const-string v5, "HTCCamera"

    const-string v5, "Press back key to stop video recording"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->triggerRecord()V

    move v5, v8

    goto/16 :goto_0

    :cond_34
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mEffectPanel:Lcom/android/camera/widget/Panel;

    invoke-virtual {v5}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v5, v10, v8}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    move v5, v8

    goto/16 :goto_0

    :cond_35
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingMenu;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMode_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingMenu;->close()V

    move v5, v8

    goto/16 :goto_0

    :cond_36
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingMenu;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mFlash_ExtensionMenu:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingMenu;->close()V

    move v5, v8

    goto/16 :goto_0

    :cond_37
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v5, :cond_38

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_38

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->closeSelfTimer()V

    move v5, v8

    goto/16 :goto_0

    :cond_38
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v5

    if-nez v5, :cond_3b

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v5, v8}, Lcom/android/camera/MenuHandler;->closeSubMenu(Z)Z

    move-result v0

    :cond_39
    if-nez v0, :cond_3a

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->animateClose()V

    :cond_3a
    move v5, v8

    goto/16 :goto_0

    :cond_3b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-ge v5, v8, :cond_15

    sget-object v5, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v5}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    if-ne v5, v8, :cond_15

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v5}, Lcom/android/camera/IntentManager;->isFromCamcorder()Z

    move-result v5

    if-ne v5, v8, :cond_3c

    const-string v5, "HTCCamera"

    const-string v5, "go Back - to finish CamcoderEntry"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    goto/16 :goto_5

    :cond_3c
    const-string v5, "HTCCamera"

    const-string v5, "go Back - to finish CameraEntry"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :sswitch_11
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_3d

    move v5, v8

    goto/16 :goto_0

    :cond_3d
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_3e

    const-string v5, "HTCCamera"

    const-string v5, "!! Menu Key block !! - mCameraThread = null"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_3e
    sget-boolean v5, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-nez v5, :cond_3f

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->isCameraTakingPicture()Z

    move-result v5

    if-nez v5, :cond_3f

    iget-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v5, :cond_3f

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v5

    if-eqz v5, :cond_40

    :cond_3f
    const-string v5, "HTCCamera"

    const-string v5, "!! Menu Key block !!"

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    goto/16 :goto_0

    :cond_40
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "HTCCamera"

    const-string v5, "!! Menu Key block !! - low internal storage ..."

    invoke-static {v9, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v11}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const v6, 0x104032c

    invoke-static {v5, v11, v6, v10, v12}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move v5, v8

    goto/16 :goto_0

    :cond_41
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->togglePanelState()V

    move v5, v8

    goto/16 :goto_0

    :sswitch_12
    move v5, v8

    goto/16 :goto_0

    :cond_42
    iget-object v5, p0, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->requestFocus()Z

    goto/16 :goto_4

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x17 -> :sswitch_3
        0x18 -> :sswitch_7
        0x19 -> :sswitch_7
        0x1b -> :sswitch_2
        0x42 -> :sswitch_3
        0x50 -> :sswitch_0
        0x52 -> :sswitch_4
        0x81 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_10
        0x13 -> :sswitch_e
        0x14 -> :sswitch_c
        0x17 -> :sswitch_b
        0x18 -> :sswitch_f
        0x19 -> :sswitch_d
        0x1b -> :sswitch_a
        0x42 -> :sswitch_b
        0x50 -> :sswitch_8
        0x52 -> :sswitch_11
        0x54 -> :sswitch_12
        0x81 -> :sswitch_9
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "HTCCamera"

    new-instance v0, Lcom/android/camera/KeyEvent;

    const-string v1, "Key.Up"

    invoke-direct {v0, v1, p2}, Lcom/android/camera/KeyEvent;-><init>(Ljava/lang/String;Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v1, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Lcom/android/camera/KeyEvent;->isHandled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HTCCamera"

    const-string v1, "KeyUp event is interrupted by event listener"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_0
    return v1

    :cond_0
    if-ne p1, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-ge v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v1, v2, :cond_3

    const-string v1, "HTCCamera"

    const-string v1, "onKeyUp - UI Block !!!"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_3
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    move v1, v2

    goto :goto_0

    :sswitch_1
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMediaSaved(Lcom/android/camera/MediaEvent;)V
    .locals 3

    const-string v2, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "onMediaSaved() - start"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/MediaEvent;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    instance-of v0, p1, Lcom/android/camera/PictureSavedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lcom/android/camera/PictureSavedEvent;

    invoke-virtual {p1}, Lcom/android/camera/PictureSavedEvent;->isLastPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startScaladoPostProcessing(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "HTCCamera"

    const-string v0, "onMediaSaved() - end"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "Cannot start Scalado post-processing because there is no camera thread"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v6, "auto"

    const-string v5, "HTCCamera"

    const-string v2, "none"

    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnCreate:Z

    if-ne v0, v3, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "need to do create, not to initate mode onNewIntent!!"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->initManager(Landroid/content/Intent;)V

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    sput-boolean v3, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const-string v0, "pref_camera_switch"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_video_effect"

    const-string v1, "none"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-ne v0, v3, :cond_1

    const-string v0, "pref_camera_effect_manual"

    const-string v1, "none"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    const-string v0, "pref_front_camera_mode"

    invoke-static {p0, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_self_portrait"

    invoke-static {p0, v0, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v0, "pref_camera_self_timer"

    const-string v1, "none"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_camera_face_number"

    const-string v1, "none"

    invoke-static {p0, v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pref_camera_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_video_scene"

    const-string v1, "auto"

    invoke-static {p0, v0, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetIndicatorLayout()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendUniqueEmptyMessage(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CameraActivity.NewIntent"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "HTCCamera"

    const-string v2, "HTCCamera"

    const-string v2, "onPause() - start"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DOptimalLandscape:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m3DTriggerCapture:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsFlashDisabled:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    const-string v2, "HTCCamera"

    const-string v2, "onPause() - mIsUIReady = false"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v3, "CameraActivity.Pausing"

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->restoreVolume()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v2, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x41

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x25

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3d

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3e

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v2

    if-ne v2, v5, :cond_2

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->bCancelFocus:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    const-string v2, "HTCCamera"

    const-string v2, "onPause() - mFocusingState = NO_FOCUSING"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x22

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v2, "HTCCamera"

    const-string v2, "OnPause - set mWaitResetSettings to false"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    sput-boolean v4, Lcom/android/camera/HTCCamera;->mIsWaitKeyguardBeforePreview:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v2, :cond_e

    const-string v2, "HTCCamera"

    const-string v2, "onPause mIdle is false"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-object v2, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v5, :cond_5

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v5, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->WriteModePreference()V

    :cond_6
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    :goto_2
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v2, "HTCCamera"

    const-string v2, "OnPause - Freeze UI !!!"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/camera/HTCCamera;->mFreezeUI:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFreezeOrientation:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, v4, v4}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_9
    const/4 v1, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.eas.intent.resumeSync"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.eas.extra.tag"

    const-string v3, "com.android.camera.HTCCamera"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mRunnable_Swing:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "pref_camera_scene_service_ds"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "pref_fast_fps"

    invoke-static {p0, v2, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    const-string v2, "pref_fast_frame_resolution_temp"

    const-string v3, "null"

    invoke-static {p0, v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    :cond_d
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x44

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x45

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->doOnPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v2, "HTCCamera"

    const-string v2, "onPause() - end"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string v2, "HTCCamera"

    const-string v2, "onPause mIdle is true"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScreensave:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "HTCCamera"

    const-string v2, "unregisterReceiver failed - mKeyguardReceiver"

    invoke-static {v6, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mNeed_unregisterReceiver:Z

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRestart()V
    .locals 2

    const-string v1, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "onRestart() - start"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "HTCCamera"

    const-string v0, "onRestart() - end"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 15

    const/16 v14, 0x24

    const/4 v13, 0x0

    const/4 v11, 0x1

    const-string v10, "pref_camera_3D_status"

    const-string v12, "HTCCamera"

    const-string v8, "HTCCamera"

    const-string v8, "onResume() - start"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mKeyguardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.eas.intent.pauseSync"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.htc.eas.extra.tag"

    const-string v9, "com.android.camera.HTCCamera"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopVoiceRecording()V

    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    :goto_1
    const-string v8, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " keep backgroundDataSetting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v8, v8, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v8, v11, :cond_5

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopMusic()V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->stopNotesRecording()V

    :cond_0
    :goto_2
    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-static {v8}, Lcom/android/camera/rotate/OrientationConfig;->setUIOrientation(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isVirtualHWKeyRotated()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/android/camera/HTCCamera;->mInstanceOrientation:I

    invoke-direct {p0, v8, v11}, Lcom/android/camera/HTCCamera;->updateVirtualHwKeysOrientation(IZ)V

    :cond_1
    const-string v8, "window"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    const-string v8, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial Display Orientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensor()Z

    move-result v8

    if-ne v8, v11, :cond_2

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    invoke-static {}, Lcom/android/camera/SensorHandler;->createFocusFile()V

    const-string v8, "HTCCamera"

    const-string v8, "OnResume - reset UI, immediately set mMainLayout invisible"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v8}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    goto :goto_3

    :catch_0
    move-exception v8

    move-object v1, v8

    const-string v8, "HTCCamera"

    const-string v8, "registerReceiver failed - mKeyguardReceiver"

    invoke-static {v12, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    const-string v8, "HTCCamera"

    const-string v8, "connManager is null"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isHalfPCB()Z

    move-result v8

    if-ne v8, v11, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->broadcastStopFM()V

    goto/16 :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setMaxBrightness()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    if-nez v8, :cond_a

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->FriendStream:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-eq v8, v11, :cond_7

    sget-object v8, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v8

    if-ne v8, v11, :cond_8

    :cond_7
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mForce2DMode:Z

    if-eqz v8, :cond_f

    iput v11, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    :goto_4
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v9, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    iput v9, v8, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    :cond_9
    iget v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    if-ne v8, v11, :cond_10

    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v10, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :goto_5
    const-string v8, "HTCCamera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial m3DButtonStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v8, 0x3e9

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->setPriority(I)V

    :try_start_1
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m3DKeySwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->m3DStatusInitialized:Z

    :cond_a
    invoke-static {}, Lcom/android/camera/component/PowerWarningController;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    if-nez v8, :cond_b

    new-instance v8, Lcom/android/camera/FlashRestriction;

    invoke-direct {v8}, Lcom/android/camera/FlashRestriction;-><init>()V

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    const-string v8, "HTCCamera"

    const-string v8, "initFlashRestriction - start"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mFlashRestriction:Lcom/android/camera/FlashRestriction;

    invoke-virtual {v8, p0}, Lcom/android/camera/FlashRestriction;->initFlashRestriction(Lcom/android/camera/HTCCamera;)V

    const-string v8, "HTCCamera"

    const-string v8, "initFlashRestriction - end"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const-string v9, "PowerWarning UI"

    invoke-virtual {v8, v9}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/component/Component;->initialize()V

    :cond_b
    const-string v8, "HTCCamera"

    const-string v8, "Block Capture UI - onResume(), and unblock after start preview"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v11, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iput-boolean v13, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    const-string v8, "HTCCamera"

    const-string v8, "onResume() - mFocusingState = NO_FOCUSING"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput v13, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const-string v8, "keyguard"

    invoke-virtual {p0, v8}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->keyguardIsShowing()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "HTCCamera"

    const-string v8, "keyguard is shown !!!!!"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v11, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    :goto_7
    iput-boolean v13, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mNeed_doOnResume:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/camera/HTCCamera;->mLastSavedMediaPath:Ljava/lang/String;

    iput-boolean v13, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    const-string v8, "HTCCamera"

    const-string v8, "OnResume - set mWaitResetSettings to true"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mIndicatorLayout_Camera:Landroid/view/View;

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateIndicatorLayout_AutoCapture()V

    :cond_c
    iget-boolean v8, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v8, :cond_13

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v8, v14}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v9, v9

    invoke-static {v8, v14, v9, v10}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_8
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/camera/HTCCamera;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v8, v13}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_d
    iget-object v8, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v9, "CameraActivity.Resuming"

    invoke-virtual {v8, v9}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->DisablePen()Z

    move-result v8

    if-ne v8, v11, :cond_e

    invoke-static {p0}, Lcom/android/camera/Util;->disableSketcher(Landroid/app/Activity;)V

    :cond_e
    iput-boolean v13, p0, Lcom/android/camera/HTCCamera;->mIsBackQuit:Z

    const-string v8, "HTCCamera"

    const-string v8, "onResume() - end"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Camera3DSettings;->get3DInitialStatus(Landroid/content/ContentResolver;)I

    move-result v8

    iput v8, p0, Lcom/android/camera/HTCCamera;->m3DButtonStatus:I

    goto/16 :goto_4

    :cond_10
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_5

    :catch_1
    move-exception v8

    move-object v1, v8

    const-string v8, "HTCCamera"

    const-string v8, "registerReceiver failed!!"

    invoke-static {v12, v8, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :cond_11
    const-string v8, "pref_camera_3D_status"

    invoke-static {p0, v10, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    goto/16 :goto_6

    :cond_12
    const-string v8, "HTCCamera"

    const-string v8, "keyguard is not shown !!!!!"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v13, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    goto/16 :goto_7

    :cond_13
    sget-boolean v8, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-nez v8, :cond_14

    const-string v8, "HTCCamera"

    const-string v8, "mIsKeyguardShow is false, activate"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->activate()V

    goto :goto_8

    :cond_14
    const-string v8, "HTCCamera"

    const-string v8, "mIsKeyguardShow is true, setWaitKeyguardBeforePreview(true)"

    invoke-static {v12, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto :goto_8
.end method

.method public onStart()V
    .locals 5

    const/4 v3, 0x1

    const-string v4, "HTCCamera"

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string v0, "HTCCamera"

    const-string v0, "onStart() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "onStart() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string v2, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "onStop() - start"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    const-string v0, "HTCCamera"

    const-string v0, "onStop() - end"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "HTCCamera"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->m_CancelFocusFromTouch:Z

    const-string v1, "HTCCamera"

    const-string v1, "UnBlock Capture UI - touch down and cancel focus"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-ne v1, v3, :cond_1

    const-string v1, "HTCCamera"

    const-string v1, "onTouchEvent - UI Block !!!"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    :goto_0
    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mIsSipExist:Z

    if-ne v1, v3, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "onTouchEvent - SIP is shown, UI Block !!!"

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mtvSelfTimer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1, p1}, Lcom/android/camera/GpuEffectController;->handleTouchBehavior(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/HTCCamera;->resetTapCapture(II)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    goto :goto_1

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v1, v3, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportTapScreenCapture()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/GpuEffectController;->isControlBarOnTouch()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/HTCCamera;->checkTapCapture(II)V

    goto :goto_1

    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mCloseTouchEvent:Z

    if-eq v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasSpecificEffect()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x3b

    const/16 v3, 0x27

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getReviewDuration()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v3, v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public openCaptureUI()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "HTCCamera"

    const-string v1, "openCaptureUI()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenSwitch_receiver:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFpsText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->enableMainBarItems(Z)V

    invoke-virtual {p0, v3, v2}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_combine_ds:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->setPanelVisible(Z)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->openSecondLayout(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->showEffectControl()V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsCaptureUIOpen:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "CaptureUI.Open"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mLocationHandler:Lcom/android/camera/LocationHandler;

    invoke-virtual {v0}, Lcom/android/camera/LocationHandler;->hasGeoTagging()Z

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDisplayGPSindicator()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->show_gps_indicator()V

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->updateSceneGuide(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mOnScreenCameraSwitchBtnIcon:Landroid/widget/ImageView;

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_b

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->updateSwitchIcon(I)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFilmstrip_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->showSceneIndicator(Z)V

    goto :goto_3
.end method

.method public powerWarningOn(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "HTCCamera"

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v0, "deactivate - mCameraThread = null or mCameraHandler = null"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "HTCCamera"

    const-string v0, "deactivate - mUIHandler = null"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    sput v2, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->setOldBrightness()V

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto :goto_0
.end method

.method public final prepareActionScreen()V
    .locals 3

    const-string v2, "HTCCamera"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsUIReady:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "mIsUIReady = false"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HTCCamera"

    const-string v0, "Action screen is not needed"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const-string v1, "Common Action Screen"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->prepare()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const-string v1, "Request Action Screen"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/actionscreen/ActionScreen;

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    goto :goto_1

    :cond_3
    const-string v0, "HTCCamera"

    const-string v0, "No available action screen"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mPrepareActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    const-string v0, "HTCCamera"

    const-string v0, "Cannot prepare action screen because there is no handler"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reachBeepCount()Z
    .locals 2

    sget v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerFocusSensor(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "mSensorHandler == null in registerFocusSensor()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->registerSensor()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSensorHandler:Lcom/android/camera/SensorHandler;

    invoke-virtual {v0}, Lcom/android/camera/SensorHandler;->unregisterSensor()V

    goto :goto_0
.end method

.method public releaseFaceDetection()V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "releaseFaceDetection()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    invoke-virtual {v0}, Lcom/android/camera/FaceDetection;->releaseFaceDetection()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mFaceDetection:Lcom/android/camera/FaceDetection;

    :cond_0
    return-void
.end method

.method public resetAutoCaptureTask()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfTimerTask:Z

    sput-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    return-void
.end method

.method public resetBeepCount()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mBeepCount:I

    return-void
.end method

.method public resetFocusMode()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    return-void
.end method

.method public resetForDOT()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitchBtn_icon:Landroid/widget/ImageView;

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mSwitch_text_ds:Landroid/widget/TextView;

    const v1, 0x7f0a0150

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "pref_camera_scene_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string v0, "pref_camera_scene_service_ds"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/camera/HTCCamera;->doAfterSceneSelect(I)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mScene_btn_ds:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mScene_text_ds:Landroid/widget/TextView;

    invoke-static {v0, v1, v2}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public resetIndicatorLayout()V
    .locals 4

    const/4 v2, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iput v3, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v3, v1, v2}, Lcom/android/camera/HTCCamera;->setLayoutForTimer(ZII)V

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v3, v1, v2}, Lcom/android/camera/HTCCamera;->setLayoutForRecordIcon(ZII)V

    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->showSceneIndicator(Z)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/GpuEffectController;->resetOldSceneValue()V

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    return-void
.end method

.method public reset_layout_from_surface(II)V
    .locals 7

    const/4 v6, 0x1

    const-string v5, "HTCCamera"

    const-string v3, "HTCCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset_layout_from_surface - width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    if-nez v3, :cond_0

    const-string v3, "HTCCamera"

    const-string v3, "mMainLayout == null - initiate mMainLayout"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-nez v3, :cond_6

    const v3, 0x7f080043

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    :cond_0
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mMainLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const-string v3, "HTCCamera"

    const-string v3, "Reset layout end, set mMainLayout visible"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    if-nez v3, :cond_1

    const v3, 0x7f080039

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSecondLayout:Landroid/view/View;

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    if-nez v3, :cond_2

    const v3, 0x7f080040

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mSceneGuideLayout:Landroid/view/View;

    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eq v3, v6, :cond_3

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v6, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    if-nez v3, :cond_4

    const v3, 0x7f08002b

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewFilterLayout:Landroid/view/View;

    const v4, 0x7f08013f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    :cond_4
    if-ge p1, p2, :cond_7

    move v1, p1

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mPreviewVisibleArea:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void

    :cond_6
    const v3, 0x7f080045

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    goto/16 :goto_0

    :cond_7
    move v1, p2

    goto :goto_1
.end method

.method public restoreBackgrounddataSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreBackgrounddataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/HTCCamera;->keep_backgroundDataSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final returnRequestedMedia()V
    .locals 12

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "HTCCamera"

    const-string v10, "Returning media from non-service mode"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/IntentManager;->getCropValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v9, "HTCCamera"

    const-string v10, "Has Crop Extras , pass to CropImage Activity"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    if-eqz v8, :cond_3

    const-string v9, "output"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.android.camera.action.CROP"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "image/*"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v6, :cond_2

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/4 v9, 0x1

    invoke-virtual {p0, v1, v9}, Lcom/android/camera/HTCCamera;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    const-string v9, "return-data"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getJpegData()[B

    move-result-object v5

    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez v5, :cond_8

    const-string v9, "HTCCamera"

    const-string v10, "contacts - jpeg data is null !!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->resetJpegData()V

    :cond_7
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v4}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v10

    sget-object v11, Lcom/android/camera/Resolution;->CONTACT_STYLE:Lcom/android/camera/Resolution;

    invoke-virtual {v11}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v11

    invoke-static {v5, v9, v10, v11}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v9, "inline-data"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_9
    const-string v9, "HTCCamera"

    const-string v10, "return jpeg decode error!!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v9, "jpeg_data"

    invoke-virtual {v4, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_2

    :cond_b
    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_f

    if-nez v5, :cond_c

    const-string v9, "HTCCamera"

    const-string v10, "square - jpeg data is null !!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getCaptureWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v10}, Lcom/android/camera/CameraThread;->getCaptureHeight()I

    move-result v10

    sget v11, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    invoke-static {v5, v9, v10, v11}, Lcom/android/camera/Util;->cropSquareImg([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v9, "inline-data"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_d
    const-string v9, "HTCCamera"

    const-string v10, "return jpeg decode error!!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v9, "HTCCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "return request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v8, :cond_11

    if-eqz v5, :cond_10

    const/4 v7, 0x0

    :try_start_0
    const-string v9, "HTCCamera"

    const-string v10, "sent MediaStore.EXTRA_OUTPUT - start"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    const-string v9, "HTCCamera"

    const-string v10, "sent MediaStore.EXTRA_OUTPUT - end"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    sget-object v9, Lcom/android/camera/IntentManager$RequestName;->Unknown_Service:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v9}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-nez v9, :cond_6

    if-eqz v5, :cond_13

    const/4 v9, -0x1

    const v10, 0x19000

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v10, v11}, Lcom/android/camera/Util;->makeBitmap([BIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v9, "inline-data"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "data"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_2

    :catch_0
    move-exception v9

    move-object v3, v9

    :try_start_1
    const-string v9, "HTCCamera"

    const-string v10, "sent JpegData fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v9

    invoke-static {v7}, Lcom/android/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    :cond_10
    const-string v9, "HTCCamera"

    const-string v10, "EXTRA_OUTPUT - jpeg data is null !!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v9, "HTCCamera"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "return request:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_12
    const-string v9, "HTCCamera"

    const-string v10, "return jpeg decode error!!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-string v9, "HTCCamera"

    const-string v10, "inline-data - jpeg data is null !!"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set BackgroundDataSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBlock3DSwitch(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlock3DSwitch:Z

    return-void
.end method

.method public setBlockCaptureUI(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    return-void
.end method

.method public setBlockPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mBlockPowerWarning:Z

    return-void
.end method

.method public setFocusingState(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    return-void
.end method

.method public setIconPosition(ILandroid/view/View;)V
    .locals 6

    const/16 v5, 0x78

    const/16 v4, 0x6f

    const/4 v3, 0x4

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x16f

    invoke-virtual {v0, v2, v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x16f

    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v5, v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v2, v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPowerWarning(Z)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mIsPowerWarning:Z

    return-void
.end method

.method public setTurnOnTorch(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    return-void
.end method

.method public setWaitResetSettings(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    return-void
.end method

.method public setasIntentChooser()Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "setasIntentChooser() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0}, Lcom/android/camera/IntentManager;->setasIntentChooser()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public shareIntentChooser(I)Landroid/app/Dialog;
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v1, "shareIntentChooser() - mIntentManager == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mIntentManager:Lcom/android/camera/IntentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/IntentManager;->shareIntentChooser(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public final showActionScreen()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->showActionScreen(I)V

    return-void
.end method

.method public final showActionScreen(I)V
    .locals 4

    const/4 v2, 0x0

    const-string v3, "HTCCamera"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIsCaptureTriggered:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/HTCCamera;->onActionScreenClosed(Lcom/android/camera/actionscreen/ActionScreenEvent;)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreen;->open()V

    goto :goto_0

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "No action screen to open"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    if-gtz p1, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mShowActionScreenRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const-string v0, "HTCCamera"

    const-string v0, "Cannot show action screen because there is no handler"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showEffectControl()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/GpuEffectController;->showEffectControl(Z)V

    :cond_0
    return-void
.end method

.method public final showMainBarItems(ZZ)V
    .locals 8

    const/4 v1, 0x3

    const/4 v7, 0x2

    const-wide/16 v4, 0xc8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideIn(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    move v1, v7

    invoke-static/range {v0 .. v5}, Lcom/android/camera/AnimationManager;->slideOut(Landroid/view/View;IJJ)Landroid/view/animation/Animation;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method public showSceneIndicatorAnimation(Landroid/view/View;FFIIIZI)V
    .locals 6

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-ne p7, v4, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    int-to-long v4, p4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    int-to-long v4, p5

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v4, Lcom/android/camera/HTCCamera$51;

    invoke-direct {v4, p0, p6, p8}, Lcom/android/camera/HTCCamera$51;-><init>(Lcom/android/camera/HTCCamera;II)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v2

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v3

    const/4 v1, 0x0

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-direct {p0, v1, p6, p8}, Lcom/android/camera/HTCCamera;->setLayoutForTimer(ZII)V

    if-nez v2, :cond_3

    :goto_1
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    invoke-direct {p0, v4, v5, p8}, Lcom/android/camera/HTCCamera;->setLayoutForRecordIcon(ZII)V

    iget-object v4, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v4, p6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget v4, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v4, :cond_0

    invoke-virtual {p0, p8}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public show_gps_indicator()V
    .locals 0

    return-void
.end method

.method public final startAlbum()V
    .locals 3

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "FROM_CAMERA"

    :goto_0
    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "image/jpeg"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    goto :goto_0
.end method

.method public final startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    const-string v6, "preview_mode"

    const-string v5, "filmstrip"

    const-string v3, "capture_mode"

    const-string v4, "HTCCamera"

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HTCCamera"

    const-string v2, "Returning to album"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "preview_mode"

    const-string v2, "filmstrip"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "HTCCamera"

    const-string v2, "Going to album"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_1

    const-string v2, "capture_mode"

    const-string v2, "camera"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "preview_mode"

    const-string v2, "filmstrip"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "HTCCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start album : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "capture_mode"

    const-string v2, "comcorder"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public startCameraTutorial()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.camera.tutorial.CAMERA_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceChanged $$$$$$$$$$$$$$$$$$$$$$$$$$$ w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "HTCCamera"

    const-string v0, "HTCCamera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mActivityOnPause:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsKeyguardShow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "HTCCamera"

    const-string v0, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceCreated $$$$$$$$$$$$$$$$$$$$$$$$$$$  start preview"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, v4, v2, v4, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "HTCCamera"

    const-string v0, "surfaceCreated before onResume - set mIdle = true"

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/camera/HTCCamera;->mIdle:Z

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "HTCCamera"

    const-string v1, "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ surfaceDestroyed $$$$$$$$$$$$$$$$$$$$$$$$$$$"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceCreated:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/HTCCamera;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public final switchFlashMode()V
    .locals 3

    const-string v2, "pref_camera_flash_mode"

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "on"

    :goto_0
    const-string v1, "pref_camera_flash_mode"

    invoke-static {p0, v2, v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    return-void

    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "off"

    goto :goto_0

    :cond_2
    const-string v0, "auto"

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    sput-boolean v1, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public switchMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchMode(ZI)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "true"

    const-string v5, "HTCCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v2, "Mode.Switched"

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->canCancelFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "change camera mode when focusing, cancel focus"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->cancelAutoFocus()V

    const-string v1, "HTCCamera"

    const-string v1, "UnBlock Capture UI - change camera mode and cancel focus"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    :cond_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    const-string v1, "HTCCamera"

    const-string v1, "change camera mode when focusing, but device can\'t cancel focus"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    sput-boolean v4, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->releaseFaceDetection()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v1

    if-eq p1, v1, :cond_a

    move v0, v4

    :goto_1
    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mWaitResetSettings:Z

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsPreviewStarted:Z

    const-string v1, "HTCCamera"

    const-string v1, "restartCamera() - set mWaitResetSettings to true"

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->closeSettingsPanel()V

    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    if-eqz p1, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/camera/HTCCamera;->hideZoomBar(Z)V

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    if-nez v1, :cond_b

    invoke-virtual {p0, v4}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_8
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v1

    if-eq p2, v1, :cond_c

    packed-switch p2, :pswitch_data_0

    const-string v1, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Try switching to unknown mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "true"

    invoke-static {v1, v3, v4, v3, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_9
    :goto_3
    move v1, v4

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_1

    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->unlockOrientation()V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoCameraMode()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1, v3}, Lcom/android/camera/GpuEffectController;->effectChangeMode(I)V

    goto :goto_3

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/camera/HTCCamera;->closeSecondLayout(Z)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->changetoVideoMode()V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mGpuEffectContr:Lcom/android/camera/GpuEffectController;

    invoke-virtual {v1, v4}, Lcom/android/camera/GpuEffectController;->effectChangeMode(I)V

    goto :goto_3

    :cond_c
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const-string v2, "true"

    invoke-static {v1, v3, v4, v3, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v1

    if-ne v1, v4, :cond_9

    invoke-virtual {p0, p2}, Lcom/android/camera/HTCCamera;->getPrefSceneType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/HTCCamera;->updateSceneIndicator(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    sput-boolean v3, Lcom/android/camera/HTCCamera;->mBlockCaptureUI:Z

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final unlockOrientation()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    return-void
.end method

.method public final unlockZoom()V
    .locals 5

    const/4 v3, 0x0

    const-string v4, "HTCCamera"

    const-string v0, "HTCCamera"

    const-string v0, "unlockZoom() - start"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    if-nez v0, :cond_0

    const-string v0, "HTCCamera"

    const-string v0, "Zoom is already be unlocked"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsZoomLocked:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateZoomBarVisible()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Zoom.LockedStateChanged"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v0, "HTCCamera"

    const-string v0, "unlockZoom() - end"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateAutoScene_ds(I)V
    .locals 3

    const v2, 0x7f02003f

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/HTCCamera;->mScene_Idx:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_layout_ds:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f02004b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mScene_icon_ds:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateBeepLevel(I)V
    .locals 12

    const/4 v4, 0x0

    const/high16 v2, 0x7f06

    const/16 v5, 0xc8

    const/4 v3, 0x0

    const/16 v1, 0x45

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v9, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eq v9, v5, :cond_0

    sput v3, Lcom/android/camera/HTCCamera;->mBeepCount:I

    :cond_0
    sget v0, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    if-ne v0, v9, :cond_2

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const/16 v9, 0xc8

    goto :goto_0

    :pswitch_1
    const/4 v9, -0x1

    goto :goto_0

    :cond_2
    sput v9, Lcom/android/camera/HTCCamera;->mCurrentBeepLevel:I

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    if-ne v9, v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v10, p0, Lcom/android/camera/HTCCamera;->mPlayBeepTime:J

    sub-long v7, v5, v10

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-wide/16 v5, 0xc8

    cmp-long v0, v7, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    sub-long/2addr v5, v7

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateDOTCaptureIcon(ZI)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    const/high16 v1, 0x7f0a

    const v2, 0x7f020061

    invoke-static {p0, v1, v2}, Lcom/android/camera/ViewUtil;->getCustomDrawable(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f020160

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCapture_btn_ds:Landroid/widget/Button;

    const v2, 0x7f020161

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updateFaceIcon(I)V
    .locals 5

    const/16 v4, 0x45

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->mIsSelfPortraitTask:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMainBar_item:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {p0, v0}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    :cond_2
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFaceOne:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mivFaceTwo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_5

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->hasMessages(Landroid/os/Handler;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    const/high16 v1, 0x7f06

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mMode_icon:Landroid/widget/ImageView;

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto :goto_0
.end method

.method public final updateFlashMode()V
    .locals 14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mMainThread:Ljava/lang/Thread;

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mUIHandler:Landroid/os/Handler;

    new-instance v10, Lcom/android/camera/HTCCamera$36;

    invoke-direct {v10, p0}, Lcom/android/camera/HTCCamera$36;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "HTCCamera"

    const-string v10, "Cannot update flash mode, because there is no handler for UI"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0x15

    invoke-static {v9, v10}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isFlashEnabled()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "off"

    invoke-static {v9, v10, v11, v12, v13}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v10

    if-nez v10, :cond_5

    const v10, 0x7f0200cc

    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    const v10, 0x7f0a0154

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->hasFlash()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    invoke-static {v9}, Lcom/android/camera/ViewUtil;->disableImageView(Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/camera/ViewUtil;->disableTextView(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_5
    const v10, 0x7f02004e

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->disableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    goto :goto_0

    :cond_7
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-nez v9, :cond_d

    const-string v9, "pref_camera_flash_mode"

    invoke-static {p0, v9}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f07000b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_f

    const v9, 0x7f070009

    :goto_3
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v1, -0x1

    array-length v9, v4

    const/4 v10, 0x1

    sub-int v7, v9, v10

    :goto_4
    if-ltz v7, :cond_8

    aget-object v9, v4, v7

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move v1, v7

    :cond_8
    if-gez v1, :cond_9

    const/4 v1, 0x0

    const-string v3, "auto"

    :cond_9
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    aget-object v10, v5, v1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_b
    :goto_5
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/camera/HTCCamera;->mFlash_btn:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-static {v9, v10, v11}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :cond_c
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0x15

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget-boolean v9, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-eqz v9, :cond_e

    const-string v9, "torch"

    move-object v3, v9

    :goto_6
    goto :goto_2

    :cond_e
    const-string v9, "off"

    move-object v3, v9

    goto :goto_6

    :cond_f
    const v9, 0x7f07000c

    goto :goto_3

    :cond_10
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    :cond_11
    sget-boolean v9, Lcom/android/camera/HTCCamera;->mTurnOnTorch_Camcorder:Z

    if-nez v9, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_12

    const v9, 0x7f0200cc

    move v0, v9

    :goto_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_13

    const/4 v9, 0x0

    move v6, v9

    :goto_8
    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/camera/HTCCamera;->mFlash_text_ds:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_12
    const v9, 0x7f02004e

    move v0, v9

    goto :goto_7

    :cond_13
    const v9, 0x7f0a0154

    move v6, v9

    goto :goto_8

    :cond_14
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_15

    const v9, 0x7f0200cd

    move v0, v9

    :goto_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_16

    const/4 v9, 0x0

    move v6, v9

    :goto_a
    goto :goto_8

    :cond_15
    const v9, 0x7f02004f

    move v0, v9

    goto :goto_9

    :cond_16
    const v9, 0x7f0a0153

    move v6, v9

    goto :goto_a
.end method

.method public updateIndicatorLayout_AutoCapture()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v2, v2, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getSelfTimerInterval()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    const v3, 0x7f0200fc

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->setLayoutForTimer(ZII)V

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_2
    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    iget v2, p0, Lcom/android/camera/HTCCamera;->mFaceNumber:I

    if-lez v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->showSelfPortraitHint()V

    :goto_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->updateZoomBarVisible()V

    goto :goto_0

    :sswitch_0
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    const v3, 0x7f0200fb

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    const v3, 0x7f0200fa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mivSelfTimer:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/camera/HTCCamera;->mAutoCaptureLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/camera/HTCCamera;->hideSelfPortraitHint()V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public updateIndicatorLayout_RecordMute()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "HTCCamera"

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v1, v4, :cond_0

    invoke-static {p0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v1, "HTCCamera"

    const-string v1, "Reset View: Record Sound Indicator - off"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    const v2, 0x7f02014c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v2, Lcom/android/camera/BooleanEvent;

    const-string v3, "RecordWithAudio.Changed"

    invoke-direct {v2, v3, v0}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v1

    if-ne v1, v4, :cond_0

    if-nez v0, :cond_3

    move v1, v4

    :goto_2
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v3, v3, Lcom/android/camera/CameraThread;->mMode:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->setLayoutForRecordIcon(ZII)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto :goto_0

    :cond_2
    const-string v1, "HTCCamera"

    const-string v1, "Reset View: Record Sound Indicator - on"

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mivMute:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_2
.end method

.method public updateSceneIndicator(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v1, v1, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    :cond_2
    return-void

    :cond_3
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f02005f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v1, :cond_1

    const-string v1, "pref_camera_switch"

    invoke-static {p0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_e

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v3}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const-string v1, "landscape"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020055

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto :goto_1

    :cond_6
    const-string v1, "sports"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto :goto_1

    :cond_7
    const-string v1, "flowers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020059

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto :goto_1

    :cond_8
    const-string v1, "backlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto :goto_1

    :cond_9
    const-string v1, "beach"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020043

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto :goto_1

    :cond_a
    const-string v1, "snow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto/16 :goto_1

    :cond_b
    const-string v1, "sunset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto/16 :goto_1

    :cond_c
    const-string v1, "candlelight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020048

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v3, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto/16 :goto_1

    :cond_d
    const-string v1, "night"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneImage:Landroid/widget/ImageView;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput-boolean v4, p0, Lcom/android/camera/HTCCamera;->mIsFlashlightOffByScene:Z

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/android/camera/HTCCamera;->m_sceneContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {v1, v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method
