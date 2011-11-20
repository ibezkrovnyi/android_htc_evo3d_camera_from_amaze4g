.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$OneShotPreviewCallback;,
        Lcom/android/camera/CameraThread$DecodeThread;,
        Lcom/android/camera/CameraThread$PreviewCallback;,
        Lcom/android/camera/CameraThread$HtcCallback;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$AutoFocusCallback;,
        Lcom/android/camera/CameraThread$ScaladoThread;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$CommonCaptureHandler;,
        Lcom/android/camera/CameraThread$StorePictureCallback;
    }
.end annotation


# static fields
.field public static final CALCULATE_FPS:I = 0x19

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_TYPE_FRONT:I = 0x2

.field public static final CAMERA_TYPE_MAIN:I = 0x1

.field public static final CAMERA_TYPE_MAIN_3D:I = 0x3

.field public static final CAMERA_TYPE_UNKNOWN:I = 0x0

.field public static final CANCEL_FOCUS:I = 0x6

.field public static final CANNOT_STAT_ERROR:I = 0x2

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field private static final CHANGE_ZOOM:I = 0x46

.field public static final CHECK_INTERNAL_STORAGE:I = 0x34

.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x16

.field public static final CHECK_STORAGE_STATUS:I = 0x35

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CLOSE_CAMERA_DELAYED:I = 0x18

.field private static final CLOSE_CAMERA_DELAYED_TIME:I = 0x7d0

.field public static final CREATE_IMAGE_THUMB:I = 0x1d

.field public static final CREATE_THUMB:I = 0x39

.field public static final CREATE_VIDEO_THUMB:I = 0x1e

.field public static final DISABLE_TOUCH_AEC:I = 0x1f

.field public static final ENABLE_CAF:I = 0x2e

.field public static final ENTER_VIDEO_MODE:I = 0xb

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_AUTOSMILECAPTURE:Ljava/lang/String; = "HTCCallback.AutoSmileCapture"

.field public static final EVENT_BLINKONOFF_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkOffChanged"

.field public static final EVENT_BLINK_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkChanged"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_LOWLIGHT_CHANGED:Ljava/lang/String; = "HTCCallback.LowLightChanged"

.field public static final EVENT_MACROFOCUS_CHANGED:Ljava/lang/String; = "HTCCallback.MarcoFocusChanged"

.field public static final EVENT_MEDIA_DELETION_COMPLETED:Ljava/lang/String; = "Media.DeletionCompleted"

.field public static final EVENT_MEDIA_SAVED:Ljava/lang/String; = "Media.Saved"

.field public static final EVENT_MEDIA_SAVE_FAILED:Ljava/lang/String; = "Media.SaveFailed"

.field public static final EVENT_POSTVIEW_IMAGE_CREATE:Ljava/lang/String; = "ReviewAnimation.PostviewCreated"

.field public static final EVENT_POWER_REC_WARNING_RECEIVED:Ljava/lang/String; = "PowerRecWarning.Received"

.field public static final EVENT_POWER_WARNING_RECEIVED:Ljava/lang/String; = "PowerWarning.Received"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "Preview.Started"

.field public static final EVENT_PREVIEW_STARTING:Ljava/lang/String; = "Preview.Starting"

.field public static final EVENT_PREVIEW_STOPPED:Ljava/lang/String; = "Preview.Stopped"

.field public static final EVENT_PREVIEW_STOPPING:Ljava/lang/String; = "Preview.Stopping"

.field public static final EVENT_RECORDING_STARTED:Ljava/lang/String; = "Recording_Started"

.field public static final EVENT_REQUEST_CLOSE_CAMERA:Ljava/lang/String; = "Request.CloseCamera"

.field public static final EVENT_REQUEST_DELETE_MEDIA:Ljava/lang/String; = "Request.DeleteLatestMedia"

.field public static final EVENT_SMILE_CHANGED:Ljava/lang/String; = "HTCCallback.SmileChanged"

.field public static final EVENT_TAKE_PICTURE_ENDED:Ljava/lang/String; = "Capture.Ended"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_RANGE_RETRIEVED:Ljava/lang/String; = "Zoom.RangeRetrieved"

.field public static final EXIT_VIDEO_MODE:I = 0xc

.field public static final LOAD_SETTINGS:I = 0x1c

.field public static final NO_STORAGE_ERROR:I = 0x1

.field public static final POST_PROCESSING:I = 0x37

.field public static final QUIT_CAMERA_THREAD:I = 0x8

.field public static final RECORDING_FINISH_AUTO_FOCUS:I = 0x2d

.field public static final RECORDING_MESSAGE:I = 0xa

.field public static final RESET_ZOOM_VALUE:I = 0x30

.field public static final SEND_POWER_WARNING_MSG:I = 0x3b

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_BLINK_DETECTION:I = 0x3c

.field public static final SET_BRIGHTNESS_VALUE:I = 0x11

.field public static final SET_CUSTOM_EFFECT_PROP:I = 0x2c

.field public static final SET_EFFECT:I = 0x13

.field public static final SET_FACE_OPTIONS:I = 0x20

.field public static final SET_FLASH_MODE:I = 0x15

.field public static final SET_GE_CONTRAST:I = 0x32

.field public static final SET_GE_DEPTH:I = 0x24

.field public static final SET_GE_DISTORTION:I = 0x25

.field public static final SET_GE_DOTS:I = 0x31

.field public static final SET_GE_NONE:I = 0x28

.field public static final SET_GE_PARAMETER_FROM_CONTROL_BAR:I = 0x2a

.field public static final SET_GE_PARAMETER_FROM_CONTROL_CIRCLE:I = 0x29

.field public static final SET_GE_SEPIA:I = 0x27

.field public static final SET_GE_TS:I = 0x33

.field public static final SET_GE_VIGNETTE:I = 0x26

.field public static final SET_GE_VINTAGE_GREEN:I = 0x21

.field public static final SET_GE_VINTAGE_HIGH:I = 0x22

.field public static final SET_GE_VINTAGE_RED:I = 0x23

.field public static final SET_IMAGE_PROPERTY:I = 0x14

.field public static final SET_ISO:I = 0x12

.field public static final SET_OLA_ORIENTATION_PARAMETER:I = 0x2b

.field public static final SET_RESOLUTION:I = 0xf

.field public static final SET_SCENE_MODE:I = 0x3a

.field public static final SET_SMILE_CAPTURE:I = 0x3d

.field public static final SET_WHITE_BALANCE:I = 0x10

.field public static final START_FOCUS:I = 0x5

.field public static final START_PREVIEW:I = 0x0

.field public static final START_RECORDING:I = 0x9

.field public static final START_RECORDING_DELAY:I = 0x36

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field public static final STEREO_RECORDING:I = 0x38

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STOP_VIDEO_RECORDING_DELAY:I = 0x2f

.field public static final STORAGE_FULL:I = 0x3

.field public static final STORAGE_OK:I = 0x0

.field public static Storage_Status:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field public static final TAKE_FOCUS:I = 0x4

.field public static final TAKE_PICTURE:I = 0x7

.field public static final TAKE_PREVIEW:I = 0x1a

.field public static final THUMB_FILE_PATH:Ljava/lang/String; = "thumb_file_path"

.field public static final VIDEO_MODE:I = 0x1

.field public static final WAIT_SELFTIMER:I = 0x3

.field public static final ZOOM_UNKNOWN:I = -0x80000000

.field public static mEnableCAF:Z

.field public static mEnableTouchAEC:Z

.field public static mIsLastCameraClosed:Z

.field private static mLastContentUri:Landroid/net/Uri;

.field public static mTakeFocus:Z


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private final HTC_CALLBACK_AUTOSMILECAPTURE:I

.field private final HTC_CALLBACK_BLINKONOFF_CHANGED:I

.field private final HTC_CALLBACK_BLINK_CHANGED:I

.field private final HTC_CALLBACK_LOWLIGHT_CHANGED:I

.field private final HTC_CALLBACK_MACROFOCUS_CHANGED:I

.field private final HTC_CALLBACK_SMILE_CHANGED:I

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field private Video_Mode_Height:I

.field private Video_Mode_Width:I

.field private bIsStereo:Z

.field private bShowFocusIcon:Z

.field private bShutterSound:Z

.field private bSwitchCamera:Z

.field public m3DButtonStatus:I

.field private m3DFileFormat:Ljava/lang/String;

.field public m3DPreviewStatus:I

.field private mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCanStartPreview:Z

.field private mCaptureHandler:Lcom/android/camera/ICaptureHandler;

.field private mCaptureRotation:I

.field private mCaptureState:I

.field private mCheckingThread:Ljava/lang/Thread;

.field private final mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentColorEffect:Ljava/lang/String;

.field private mCurrentResolution:Lcom/android/camera/Resolution;

.field private mEncoderType:I

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mFps:I

.field private mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field private mIsCaptureInterrupted:Z

.field private mIsOnlySetResolution:Z

.field private mIsStart_fps:Z

.field private mJPEGQuality:I

.field private mJPEGQualityKey:Ljava/lang/String;

.field private mJpegData:[B

.field private mLocation:Landroid/location/Location;

.field public mMode:I

.field private mNumber:I

.field public mOneShotBitmap:Landroid/graphics/Bitmap;

.field private mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

.field private mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

.field private mPreviewData:[B

.field private mPreviewing:Z

.field public mRecPowerWarning:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecording:Z

.field private mStartRecordingTime:J

.field public mSyncObject:Ljava/lang/Object;

.field private volatile mTaking_picture:Z

.field mUIHandler:Landroid/os/Handler;

.field private mVideoPath:Ljava/lang/String;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private volatile m_MaxZoom:I

.field private volatile m_MinZoom:I

.field private mbCanTakePicture:Z

.field private mbNoneEffect:Z

.field private mfilename:Ljava/lang/String;

.field private mfilepath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5

    const/high16 v1, -0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v3, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_SMILE_CHANGED:I

    iput v4, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_AUTOSMILECAPTURE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINK_CHANGED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINKONOFF_CHANGED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_LOWLIGHT_CHANGED:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_MACROFOCUS_CHANGED:I

    iput v1, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    iput v1, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    iput v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mPreviewData:[B

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    iput v3, p0, Lcom/android/camera/CameraThread;->mNumber:I

    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    iput v3, p0, Lcom/android/camera/CameraThread;->mFps:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    iput v4, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    iput v4, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    new-instance v0, Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/CameraThread$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$AutoFocusCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    new-instance v0, Lcom/android/camera/CameraThread$HtcCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$HtcCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    new-instance v0, Lcom/android/camera/CameraThread$PreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$PreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

    new-instance v0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$OneShotPreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eq v2, v5, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v3, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v3, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return p1
.end method

.method static synthetic access$2808(Lcom/android/camera/CameraThread;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkStorageStatus()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return p1
.end method

.method private capture()V
    .locals 9

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v8, "img-timestamp"

    const-string v5, "CameraThread"

    const-string v3, "CameraThread"

    const-string v3, "start to capture photo"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v3, :cond_0

    const-string v3, "CameraThread"

    const-string v3, "take picture , mCamController is null, return"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v7, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v4, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string v3, "CameraThread"

    const-string v3, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v3, :cond_1

    const-string v3, "CameraThread"

    const-string v3, "set rotation landscape while 3D photo mode"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_1
    invoke-static {v2}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    const-string v3, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set rotation, mCaptureRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v4, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setRotation(I)V

    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v4, "img-timestamp"

    const-string v4, "1"

    invoke-virtual {v3, v8, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v3, "add time stamp on photo"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v3, "CameraThread"

    const-string v3, "Camera - takePicture"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v3}, Lcom/android/camera/TIME$Value;->End()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    if-nez v0, :cond_2

    const-string v3, "CameraThread"

    const-string v3, "No capture handler is specified, use default handler"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    :cond_2
    const-string v3, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before capturing, capture handler is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, p0, v3}, Lcom/android/camera/ICaptureHandler;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    iput v7, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    const-string v3, "CameraThread"

    const-string v3, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v3, "take picture exception. Camera app finished"

    invoke-static {v5, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x5a

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v4, "img-timestamp"

    const-string v4, "0"

    invoke-virtual {v3, v8, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v3, "not add time stamp on photo"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkCanTakePicture()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkCanTakeRecorder()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private checkStorageStatus()V
    .locals 5

    const/16 v3, 0x27

    const/4 v2, 0x0

    const-string v4, "CameraThread"

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "Storage Error!! exit action screen"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const-string v1, "false"

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "CameraThread"

    const-string v0, "Storage Error!! close self-timer"

    invoke-static {v4, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    return-void
.end method

.method private getJPEGQualityPreference()I
    .locals 7

    const-string v6, "_normal"

    const-string v5, "_fine"

    const-string v4, "_super"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_capture_quality"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "_super"

    iput-object v4, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "_super"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x2

    const-string v2, "_super"

    iput-object v4, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    return v2

    :cond_2
    const-string v2, "_fine"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    const-string v2, "_fine"

    iput-object v5, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "_normal"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const-string v2, "_normal"

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLastContentUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
        }
    .end annotation

    const-string v8, "FOLDER = "

    const-string v7, ".jpg"

    const-string v6, ", NAME = "

    const-string v5, "CameraThread"

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v7}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v2, "CameraThread"

    const-string v2, "m3DFileFormat == null"

    invoke-static {v5, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    const-string v3, "jps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jps"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".mpo"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v7}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FOLDER = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NAME = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getVideoEncoder()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_capture_format_video"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const-string v2, "h263"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "h264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAutoFocus(Z)V
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const-string v5, "CameraThread"

    const-string v0, "CameraThread"

    const-string v0, "handleAutoFocus() start"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "handleAutoFocus() end - cancel focus"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_5

    const-string v0, "CameraThread"

    const-string v0, " Now We have Focus"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "CameraThread"

    const-string v0, "Play Focused Sound - successful"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const v2, 0x7f060002

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Focus.Finished"

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1, v6, v7}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v0, "CameraThread"

    const-string v0, "handleAutoFocus() end"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "CameraThread"

    const-string v0, " Now We don\'t have Focus"

    invoke-static {v5, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_1
.end method

.method private hasStorageTest()V
    .locals 3

    const/4 v1, 0x0

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/DCFRuler;->getReleativeVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ImageManager;->hasStorage(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "CameraThread"

    const-string v2, "cannot know storage state"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x2

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_timestamp"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isMMSRecording()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eq v2, v5, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, "CameraThread"

    const-string v3, "CameraThread"

    const-string v3, "loadResolution() - start"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v3}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :cond_1
    :goto_0
    const-string v3, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEncoderType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    const-string v3, "CameraThread"

    const-string v3, "loadResolution() - end"

    invoke-static {v5, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-ne v3, v6, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v3, :cond_1

    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_image_ratio"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_4
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    :cond_5
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v3, v4, :cond_8

    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_8
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v3

    if-eqz v3, :cond_a

    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_a
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v3

    if-eqz v3, :cond_c

    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_c
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0
.end method

.method private loadSettings()V
    .locals 22

    const-string v18, "CameraThread"

    const-string v19, "Start to Load Settings to Set Camera "

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/DCFRuler$StorageCardControl;->initStorageType(Landroid/app/Activity;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v18

    const/16 v19, 0x4

    invoke-virtual/range {v18 .. v19}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v18

    if-eqz v18, :cond_0

    if-eqz v11, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "sound-off"

    const-string v20, "true"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v17, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_2nd"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    const-string v18, "pref_camera_brightness"

    const-string v19, "exposure-compensation"

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getJPEGQualityPreference()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    const/16 v0, 0x64

    iput v0, v1, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v13

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "off"

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    const-string v18, "pref_play_shutter_sound"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bShutterSound:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_effect"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    const-string v18, "none"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const-string v18, "CameraThread"

    const-string v19, " Load Settings - ImageProperty "

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->setImageProperty()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_flicker_adjustment"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "preview-iso"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "iso"

    const-string v20, "auto"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    sget-boolean v18, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_post_processing"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-imboost"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-denoise"

    const-string v20, "on"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_6
    const-string v18, "auto"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    if-nez v12, :cond_1b

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/BooleanEvent;

    const-string v20, "AutoScene.Enabled"

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_blink detection"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_smile_capture"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "103"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_stereo_recording"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v18, "CameraThread"

    const-string v19, "Stereo = true"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    :cond_9
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_3D_file_format"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "3d-file-format"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "CameraThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Set 3D file format: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v18, "CameraThread"

    const-string v19, "End to Load Settings to Set Camera"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v18

    if-nez v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_c
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene_ds"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_a
    const/4 v15, 0x0

    if-eqz v14, :cond_d

    const-string v18, "null"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_d

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    :cond_d
    const/16 v18, 0x8

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_manual"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_scene_service_ds"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_a

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    const-string v20, "auto"

    invoke-static/range {v18 .. v20}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_white_balance_2nd"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_11
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->isTurnOnTorch()Z

    move-result v18

    if-eqz v18, :cond_12

    const-string v8, "torch"

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string v8, "off"

    goto :goto_b

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_flash_mode"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_video_effect"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_15
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "preview-iso"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_camera_iso"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    const-string v18, "null"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    :cond_17
    const-string v10, "auto"

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "iso"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-imboost"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "postproc-enable-denoise"

    const-string v20, "off"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const-string v19, "pref_video_scene"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/camera/BooleanEvent;

    const-string v20, "AutoScene.Enabled"

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_7

    :cond_1c
    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "110"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    const-string v19, "ola-sbd-options"

    const-string v20, "100"

    invoke-virtual/range {v18 .. v20}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1e
    const-string v18, "CameraThread"

    const-string v19, "Stereo = false"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    goto/16 :goto_9
.end method

.method private releaseMediaRecorder()V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "CameraThread"

    const-string v1, "CameraThread"

    const-string v1, "releaseMediaRecorder()"

    invoke-static {v3, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v4, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    const-string v1, "CameraThread"

    const-string v1, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v3, v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    const-string v1, "CameraThread"

    const-string v1, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v3, v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    const-string v1, "CameraThread"

    const-string v1, "mRecorder.release() - Runtime exception caught"

    invoke-static {v3, v1, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetCameraFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return-void
.end method

.method private setCounter(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2, p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incCounter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setImageProperty()V
    .locals 3

    const/4 v2, 0x5

    const-string v0, "pref_camera_contrast"

    const-string v1, "contrast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pref_camera_saturation"

    const-string v1, "saturation"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pref_camera_shaprness"

    const-string v1, "sharpness"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p2, v5, p3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v0, v4

    const-string v4, "CameraThread"

    const-string v5, "get level failed !!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private stop_video_recording()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "CameraThread"

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "CameraThread"

    const-string v2, "stop recording, so cancel auto focus, mTakeFocus = false"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v7, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "stop video recording : reconnect camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2f

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->needsReview()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isUIReady()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v7, v7, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "CAMCORDER_MODE=OFF"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    const-string v2, "CameraThread"

    const-string v2, "cancel focus failed"

    invoke-static {v4, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    const-string v2, "CameraThread"

    const-string v2, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v4, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v2

    move-object v0, v2

    const-string v2, "CameraThread"

    const-string v2, "camera reconnect exception."

    invoke-static {v4, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_3
    move-exception v2

    move-object v0, v2

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop preview exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4
.end method

.method private stop_video_recording_delay()V
    .locals 20

    const-string v4, "CameraThread"

    const-string v5, "stop_video_recording_delay start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v15, "video/3gpp"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v15, "video/mp4"

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v4, v0

    if-nez v4, :cond_1

    const-string v15, "video/mp4-3d"

    :cond_1
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    move-wide v9, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/HTCCamera;->getRecordMS()J

    move-result-wide v16

    invoke-virtual/range {v4 .. v17}, Lcom/android/camera/ImageManager;->addVideo(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/camera/ImageManager;->setVideoSize(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v4, v0

    new-instance v5, Lcom/android/camera/VideoSavedEvent;

    const-string v6, "Media.Saved"

    sget-object v7, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/VideoSavedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    const-string v4, "CameraThread"

    const-string v5, "stop_video_recording_delay end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    const-string v4, "CameraThread"

    const-string v5, "stop_video_recording(), create uri failed!!"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v4, v0

    new-instance v5, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v6, "Media.SaveFailed"

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_0
.end method

.method private store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z
    .locals 20

    :try_start_0
    const-string v4, "CameraThread"

    const-string v5, "Store Jpeg Image..."

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;->getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v19

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v4, v0

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    move-object v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual/range {v4 .. v15}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    :goto_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store image - directory name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    const-string v4, "CameraThread"

    const-string v5, "Store image: mLastContentUri = null"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    :goto_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V

    const/16 v18, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    move v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    move v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/CameraThread$StorePictureCallback;->onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    move-object v11, v0

    const/4 v12, 0x0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual/range {v4 .. v14}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sput-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    const-string v4, "CameraThread"

    const-string v5, "The number of the Files are over, please insert a new sdcard "

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v4, v0

    new-instance v5, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v6, "Media.SaveFailed"

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Store image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    const-string v4, "CameraThread"

    const-string v5, "Cannot find available image file location, please check the storage card"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v4, v0

    new-instance v5, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v6, "Media.SaveFailed"

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    const-string v4, "CameraThread"

    const-string v5, "Exception while compressing image."

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v4, v0

    new-instance v5, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v6, "Media.SaveFailed"

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method private store_image_on_data([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private store_image_on_sdcard([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private final threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public calculatePicturesRemaining()J
    .locals 17

    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v13

    int-to-long v2, v13

    const-wide/16 v13, -0x1

    cmp-long v13, v13, v2

    if-nez v13, :cond_0

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResolutionSize fail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x61a80

    :cond_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v15, v15

    mul-long/2addr v13, v15

    const-wide/32 v15, 0x100000

    sub-long v9, v13, v15

    div-long v6, v9, v2

    move-wide v4, v6

    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-gez v13, :cond_1

    const-wide/16 v4, 0x0

    :cond_1
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return freeshot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :catch_0
    move-exception v13

    move-object v1, v13

    const-string v13, "CameraThread"

    const-string v14, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v13, v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v13, "CameraThread"

    const-string v14, "return freeshot = -1"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public canTakePicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method public final changeZoom(I)V
    .locals 9

    const/16 v5, 0x46

    const-string v8, "Pending zooming request found, stop zooming at "

    const-string v4, "taking-picture-zoom"

    const-string v7, "changeZoom("

    const-string v6, "CameraThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_a

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeZoom("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "CameraThread"

    const-string v2, "Camera is not open, cannot change zoom"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-nez v2, :cond_9

    if-ge v1, p1, :cond_6

    move v0, v1

    :cond_3
    add-int/lit8 v2, v0, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending zooming request found, stop zooming at "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "Zoom.Changed"

    sget v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeZoom("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - end sync"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_6
    move v0, v1

    :cond_7
    const/4 v2, 0x2

    sub-int v2, v0, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending zooming request found, stop zooming at "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-gt v0, p1, :cond_7

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v4, p1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_b

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeZoom("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - start async"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v5, p1, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeZoom("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - end async"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "CameraThread"

    const-string v2, "Cannot change zoom because there is no handler"

    invoke-static {v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method close_camera()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "CameraThread"

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-ne v2, v5, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "CameraThread"

    const-string v2, "cancel auto focus, mTakeFocus = false"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v6, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-ne v2, v5, :cond_2

    const-string v2, "CameraThread"

    const-string v2, "before stopPreview"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    const-string v2, "CameraThread"

    const-string v2, "after stopPreview"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v7, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const-string v2, "CameraThread"

    const-string v2, "before release"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/CloseCameraRequestEvent;

    const-string v2, "Request.CloseCamera"

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CloseCameraRequestEvent;-><init>(Ljava/lang/String;Landroid/hardware/Camera;)V

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CloseCameraRequestEvent;->isHandled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_3
    const-string v2, "CameraThread"

    const-string v2, "after release"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    iput-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v7, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iput v6, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    const-string v2, "CameraThread"

    const-string v2, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    const-string v2, "CameraThread"

    const-string v2, "Release Camera - set mIsLastCameraClosed to true"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    const-string v2, "CameraThread"

    const-string v2, "cancel focus failed"

    invoke-static {v4, v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v2

    const-string v2, "CameraThread"

    const-string v2, "Exception was occurred while requesting close camera"

    invoke-static {v4, v2, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string v2, "CameraThread"

    const-string v2, "mCameraDevice == null in close_camera"

    invoke-static {v4, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final createPostViewImage(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v2, "CameraThread"

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "!!!!!!!! bitmap == null !!!!!!!!"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v0, "bitmap != null"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/PictureEvent;

    const-string v2, "ReviewAnimation.PostviewCreated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final createPostViewImage([B)V
    .locals 11

    const/4 v10, 0x0

    const-string v9, "CameraThread"

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v7, "CameraThread"

    const-string v7, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v9, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "postviewData != null, postviewData.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "postview-size"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v7, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-static {v1, v3, v7, p1}, Lcom/android/camera/ImageUtility;->createBitmapFromRawData(IILcom/scalado/base/Image$Config;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v8, Lcom/android/camera/PictureEvent;

    const-string v9, "ReviewAnimation.PostviewCreated"

    invoke-direct {v8, v9, p1, v0, v10}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v7, v8}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 7

    const-string v6, "CameraThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    const-string v4, "CameraThread"

    const-string v4, "deleteLatestMedia() - start sync"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/camera/DeletionRequestEvent;

    const-string v4, "Request.DeleteLatestMedia"

    invoke-direct {v2, v4}, Lcom/android/camera/DeletionRequestEvent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v4, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v2}, Lcom/android/camera/DeletionRequestEvent;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CameraThread"

    const-string v4, "Use default method to delete latest media"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/camera/CameraThread$5;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v4, "deleteLatestMedia() - end sync"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/DCFRuler;->backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/DCFRuler;->backToCounterForVideo(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    const-string v4, "CameraThread"

    const-string v4, "deleteLatestMedia() - start async"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v5, Lcom/android/camera/CameraThread$6;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v4, "CameraThread"

    const-string v4, "deleteLatestMedia() - end async"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "CameraThread"

    const-string v4, "Cannot delete media because there is no handler"

    invoke-static {v6, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableShutterSound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return-void
.end method

.method public final endTakePicture()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string v2, "CameraThread"

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "mTaking_picture == false"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eq v0, v3, :cond_1

    const-string v0, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCaptureState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sending CLOSE_CAMERA message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Capture.Ended"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v0, "reset mCaptureState to CAPTURE_STATE_IDLE"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    goto :goto_1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCameraType()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCaptureHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public final getCommonCaptureHandler()Lcom/android/camera/CameraThread$CommonCaptureHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getMaximumZoom()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    return v0
.end method

.method public final getMinimumZoom()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    return v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public getRecorderStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method public getRecordingTime()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getStoredDirectoryPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    return-object v0
.end method

.method public getStoredFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    return-object v0
.end method

.method getStoredVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasShutterSound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method public final interruptCapture()V
    .locals 2

    const-string v1, "CameraThread"

    const-string v0, "CameraThread"

    const-string v0, "interruptCapture() - start"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "Capturing is not in progress"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    const-string v0, "CameraThread"

    const-string v0, "interruptCapture() - end"

    invoke-static {v1, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is2ndCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method public is3DMode()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public is720p()Z
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public isCameraTakingPicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public isLastCameraClosed()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "CameraThread"

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    if-nez v0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "mIsLastCameraClosed = false, waiting for last camera close"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method public isRecPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

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

.method public final isTakingFocus()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    return v0
.end method

.method public final isTakingPicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public final isWaitingForTakingFocus()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final isWaitingForTakingPicture()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZoomRangeRetrieved()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 5

    const-string v0, "CameraThread"

    const-string v1, "Play Take Picture Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const v2, 0x7f060001

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method

.method public releaseCameraThread()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public resetJpegData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-void
.end method

.method public final restartPreview(I)V
    .locals 4

    const-string v3, "restartPreview("

    const-string v2, "CameraThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const-string v0, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartPreview("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - start sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->startPreview(I)V

    const-string v0, "CameraThread"

    const-string v0, "restartPreview() - end sync"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartPreview("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") - start async"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "CameraThread"

    const-string v0, "restartPreview() - end async"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v0, "Cannot re-start preview because there is no handler for camera thread"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 3

    const-string v2, "CameraThread"

    const-string v0, "CameraThread"

    const-string v0, "*************************************** run"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v0, Lcom/android/camera/EventManager;

    invoke-direct {v0, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/component/ThumbnailController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/ThumbnailController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ThumbnailController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/PanoramaController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PanoramaController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/component/HdrController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/HdrController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HdrController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/component/BurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/BurstController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/BurstController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_3
    invoke-static {}, Lcom/android/camera/component/HandShakeController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/HandShakeController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HandShakeController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_4
    invoke-static {}, Lcom/android/camera/component/AutoSceneController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/AutoSceneController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/AutoSceneController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_5
    invoke-static {}, Lcom/android/camera/component/DOTIndicatorController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/DOTIndicatorController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/DOTIndicatorController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_6
    invoke-static {}, Lcom/android/camera/component/ZoomBarController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/ZoomBarController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ZoomBarController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_7
    invoke-static {}, Lcom/android/camera/component/PowerWarningController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/PowerWarningController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PowerWarningController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_8
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/ReviewAnimationController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/ReviewAnimationController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_9
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v1, Lcom/android/camera/component/HappyShotController;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HappyShotController;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    :cond_a
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "CameraThread"

    const-string v0, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->deinitializeComponents()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    return-void

    :cond_c
    const-string v0, "CameraThread"

    const-string v0, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCanStartPreview()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return-void
.end method

.method public final setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V
    .locals 3

    const-string v2, "Set capture handler while taking picture"

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Set capture handler while taking picture"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set capture handler while taking picture"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public final setMode(I)V
    .locals 5

    const-string v4, "Cannot set mode during recording"

    const-string v3, "Cannot set mode during preview"

    const-string v2, "CameraThread"

    const-string v0, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "Cannot set mode during preview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during preview"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "Cannot set mode during recording"

    invoke-static {v2, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during recording"

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/camera/CameraThread;->mMode:I

    return-void
.end method

.method public setRecPowerWarning(Z)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mRecPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return-void
.end method

.method public showStorageToast(Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x25

    const-string v9, "CameraThread"

    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v3, :cond_4

    const-string v3, "CameraThread"

    const-string v3, "no storage, ready to switch"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v3, :cond_3

    if-ne p1, v8, :cond_0

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_0
    :goto_0
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f0a0132

    move v0, v3

    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_2
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0

    :cond_2
    const v3, 0x7f0a0133

    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v3

    if-ne v3, v8, :cond_5

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v8, :cond_5

    const-string v3, "CameraThread"

    const-string v3, "take picture on contact picture request - not show storage status"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v8, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "CameraThread"

    const-string v3, "media shared"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_8

    const v0, 0x7f0a002c

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v8, :cond_6

    const v0, 0x7f0a002d

    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    const v0, 0x7f0a002a

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v8, :cond_6

    const v0, 0x7f0a002b

    goto :goto_4

    :cond_9
    const-string v3, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x20c00a1

    invoke-static {v3, v7, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/android/camera/ImageManager;->isNonWritable()Z

    move-result v3

    if-ne v3, v8, :cond_c

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0027

    invoke-static {v3, v7, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const-string v3, "CameraThread"

    const-string v3, "no storage - unknown case, maybe prepare storage"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "CameraThread"

    const-string v3, "cannot know storage state"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "CameraThread"

    const-string v3, "storage full"

    invoke-static {v9, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v8, :cond_d

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0028

    invoke-static {v3, v7, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0029

    invoke-static {v3, v7, v4, v10, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startPreview(I)V
    .locals 18

    const-string v13, "CameraThread"

    const-string v14, "startPreview() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " mMode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "CameraThread"

    const-string v14, "isRecPowerWarning(), won\'t start preview"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v13, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    sput v13, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move v13, v0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const-string v14, "pref_camera_switch"

    invoke-static {v13, v14}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    invoke-static {}, Lcom/android/camera/HTCCameraAdvanceSetting;->isSetDefault()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    if-nez v13, :cond_7

    const-string v13, "CameraThread"

    const-string v14, "open the Camera in start_camera_preview"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    move-object v14, v0

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    const-string v13, "CameraThread"

    const-string v14, "Open Camera - set mIsLastCameraClosed to false"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v13, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/CameraController;->setSupportedList()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move v13, v0

    const/high16 v14, -0x8000

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v13, v0

    if-nez v13, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "taking-picture-zoom"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MinZoom:I

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v13, v0

    new-instance v14, Lcom/android/camera/RangeEvent;

    const-string v15, "Zoom.RangeRetrieved"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-direct/range {v14 .. v17}, Lcom/android/camera/RangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v14}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_6
    const/16 p1, 0x1

    :cond_7
    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v13, v0

    if-nez v13, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v13

    if-nez v13, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v13, v0

    if-nez v13, :cond_16

    const-string v13, "CameraThread"

    const-string v14, "Enable zero-shutter-lag"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "capture-mode"

    const-string v15, "burst"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "picture-count"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v14, v0

    invoke-static {v13, v14}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const-string v14, "pref_camera_3D_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v15

    invoke-static {v13, v14, v15}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v13, v0

    const/16 v14, 0x1f

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "touch-aec"

    const-string v15, "off"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v13, "CameraThread"

    const-string v14, "Disable touch aec !!!"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "CameraThread"

    const-string v14, "Start preview - disable continue AF !!!"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v13, v0

    const/16 v14, 0x2e

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "enable-caf"

    const-string v15, "off"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move v13, v0

    if-nez v13, :cond_a

    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_a

    const-string v13, "CameraThread"

    const-string v14, "reset flashlight mode !!!"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "off"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const-string v14, "pref_fast_fps"

    invoke-static {v13, v14}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v13

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "cam-mode"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const-string v14, "pref_front_camera_mode"

    invoke-static {v13, v14}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "front-camera-mode"

    const-string v15, "mirror"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadResolution()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v13, v0

    if-nez v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Height = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Height = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Camera mode RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Height = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "taking-picture-zoom"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v9

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v8

    sget-boolean v13, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    invoke-virtual {v5}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v13

    sput v13, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v13, v0

    if-nez v13, :cond_1d

    if-nez v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v13

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "taking-picture-zoom"

    sget v15, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    const/16 v14, 0x5a

    invoke-virtual {v13, v14}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    invoke-virtual {v13, v4}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v13, v0

    const-string v14, "Preview.Starting"

    invoke-virtual {v13, v14}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :try_start_3
    const-string v13, "CameraThread"

    const-string v14, "mCameraDevice.startPreview() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/hardware/Camera;->startPreview()V

    const-string v13, "CameraThread"

    const-string v14, "mCameraDevice.startPreview() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v12, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move v13, v0

    if-nez v13, :cond_1e

    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPreviewing:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x54

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_f
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v13, v0

    const-string v14, "Preview.Started"

    invoke-virtual {v13, v14}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_10
    const-string v13, "CameraThread"

    const-string v14, "start preview, mTakeFocus = false"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v13, v0

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x1f

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x23

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x2d

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v13, v0

    if-nez v13, :cond_1f

    const-string v13, "[ANALYTIC_com.android.camera]"

    const-string v14, "[camera_preview]complete"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    const-string v13, "CameraThread"

    const-string v14, "startPreview() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-static {}, Lcom/android/camera/component/PowerWarningController;->isSupported()Z

    move-result v13

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/FlashRestriction;->checkLowPower()Z

    move-result v13

    if-eqz v13, :cond_13

    const-string v13, "CameraThread"

    const-string v14, "power is low in 3D mode, won\'t start preview"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v13, v0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v13, v0

    const/16 v14, 0x3b

    const-wide/16 v15, 0x64

    invoke-static/range {v13 .. v16}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    move-object v2, v13

    const-string v13, "CameraThread"

    const-string v14, "open camera failed"

    invoke-static {v13, v14, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_13
    :try_start_5
    invoke-static {}, Lcom/android/camera/SensorHolder;->get3DCamID()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto/16 :goto_1

    :cond_14
    invoke-static {}, Lcom/android/camera/SensorHolder;->getMainCamID()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_c

    :cond_15
    const-string v13, "CameraThread"

    const-string v14, "mCameraActivity == null after opening camera"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_16
    const-string v13, "CameraThread"

    const-string v14, "Disable zero-shutter-lag"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "capture-mode"

    const-string v15, "normal"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_1
    move-exception v13

    move-object v2, v13

    const-string v13, "CameraThread"

    const-string v14, "Cannot enable/disable zero-shutter-lag"

    invoke-static {v13, v14, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "cam-mode"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "cam-mode"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "front-camera-mode"

    const-string v15, "reverse"

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v13

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/16 v14, 0x68

    invoke-static {v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move v15, v0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SetPreviewSize in start_preview: VIDEO MODE, Width = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Height = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Video mode in start_preview RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", Height = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v13, v0

    const/4 v14, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v17}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v13, v0

    const-string v14, "taking-picture-zoom"

    invoke-virtual {v13, v14, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_7

    :catch_2
    move-exception v13

    move-object v2, v13

    const-string v13, "CameraThread"

    const-string v14, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v13, v14, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_8

    :catch_3
    move-exception v13

    move-object v2, v13

    const-string v13, "CameraThread"

    const-string v14, "start preview failed"

    invoke-static {v13, v14, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/camera/HTCCamera;->finish()V

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_1e
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    goto/16 :goto_a

    :cond_1f
    const-string v13, "[ANALYTIC_com.android.camera]"

    const-string v14, "[camcorder_preview]complete"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method public final startScaladoPostProcessing(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start_calculate_fps()V
    .locals 0

    return-void
.end method

.method start_video_recording(I)V
    .locals 19

    const-string v15, "CameraThread"

    const-string v16, "start_video_recording - start"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v15, v0

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v15, v0

    const/16 v16, 0x2f

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "CameraThread"

    const-string v16, "start recording before stop recoding delay"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object v15, v0

    const/16 v16, 0x2f

    invoke-static/range {v15 .. v16}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    if-eqz v15, :cond_1

    const-string v15, "CameraThread"

    const-string v16, "mRecorder != null in start video recording"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    if-nez v15, :cond_2

    new-instance v15, Landroid/media/MediaRecorder;

    invoke-direct {v15}, Landroid/media/MediaRecorder;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v15, v0

    if-nez v15, :cond_3

    const-string v15, "CameraThread"

    const-string v16, "mCameraDevice is null in start video recording"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v15, v0

    if-eqz v15, :cond_4

    sget v15, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    const-string v15, "CameraThread"

    const-string v16, "Start recording and not touch focus - enable continue AF !!!"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v15, v0

    const-string v16, "enable-caf"

    const-string v17, "on"

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v15

    const-string v16, "CAMCORDER_MODE=ON"

    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "CameraThread"

    const-string v16, "Won\'t access mCameraDevice due to PowerWarning"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mRecording:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/hardware/Camera;->unlock()V

    const-string v15, "CameraThread"

    const-string v16, "start video recording: unlock camera"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_e

    const-string v15, "CameraThread"

    const-string v16, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move v15, v0

    if-nez v15, :cond_6

    const-string v15, "CameraThread"

    const-string v16, "set rotation landscape while 3D video mode"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_6
    invoke-static {v13}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "set rotation, mCaptureRotation = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-interface {v8}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    move v15, v0

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v15

    invoke-static {v15}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v12

    const/4 v15, 0x1

    invoke-static {v15, v12}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[START RECORD] Stereo = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v15

    if-nez v15, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_3
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v15, 0x32

    invoke-direct {v4, v15}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-static {v15, v4}, Lcom/android/camera/DCFRuler;->getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I

    move-result v15

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->mNumber:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    const-string v7, ".3gp"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v15

    if-nez v15, :cond_a

    const-string v7, ".mp4"

    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Save video: directory name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ",  file name = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v10

    if-eqz v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v10, v15}, Lcom/android/camera/RecordLimitCheck;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/camera/RecordLimitCheck;->calculateRemainSpace()V

    :try_start_2
    invoke-virtual {v10}, Lcom/android/camera/RecordLimitCheck;->getVideoBitrate()I

    move-result v3

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "set encode bitrate: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-virtual {v15, v3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-virtual {v10}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v16

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-virtual {v10}, Lcom/android/camera/RecordLimitCheck;->getMaxBytes()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_12

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1e

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setVideoSize: width = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "height = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mEncoderType:I

invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getVideoEncoder()I
move-result v0

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz v9, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x7d00

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1f40

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_c
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_18

    const-string v15, "CameraThread"

    const-string v16, "AMR_NB"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_d
    :goto_a
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/media/MediaRecorder;->start()V

    const-string v15, "[ANALYTIC_com.android.camera]"

    const-string v16, "[record_video]complete"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    const-string v16, "counter_video"

    new-instance v17, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mNumber:I

    move/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object v15, v0

    const-string v16, "Recording_Started"

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v15, "CameraThread"

    const-string v16, "start_video_recording - end"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v13, v13, 0x5a

    goto/16 :goto_1

    :catch_0
    move-exception v15

    move-object v5, v15

    const-string v15, "CameraThread"

    const-string v16, "setPreviewDisplay failed, Camera app finished"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v15

    invoke-static {v15}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v12

    const/4 v15, 0x0

    invoke-static {v15, v12}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "[START RECORD] Stereo = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_3

    :catch_1
    move-exception v15

    move-object v5, v15

    const-string v15, "CameraThread"

    const-string v16, "Cannot find available video file location, please check the storage card"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v15, "CameraThread"

    const-string v16, "Camera app finished"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_4

    :catch_2
    move-exception v15

    move-object v6, v15

    const-string v15, "CameraThread"

    const-string v16, "mRecorder.setParameters() failed"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catch_3
    move-exception v15

    move-object v6, v15

    const-string v15, "CameraThread"

    const-string v16, "mRecorder.setMaxDuration() failed - only use ui message to check time out"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V

    goto/16 :goto_6

    :catch_4
    move-exception v15

    move-object v6, v15

    const-string v15, "CameraThread"

    const-string v16, "mRecorder.setMaxFileSize() failed - use message to check file size"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/android/camera/RecordLimitCheck;->restartCheckFile()V

    goto/16 :goto_7

    :cond_11
    const-string v15, "CameraThread"

    const-string v16, "RecordLimitCheck is null !!!"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x14

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0x1f400

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0xac44

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_9

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v11

    if-eqz v11, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v11, v15}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v14

    sget-object v15, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    invoke-virtual {v14, v15}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    sget-object v15, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    invoke-virtual {v14, v15}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0x17700

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0xac44

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_9

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0xfa00

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const v16, 0xfa00

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_b

    :cond_18
    const-string v15, "CameraThread"

    const-string v16, "AAC"

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v15

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    move v15, v0

    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_c

    :catch_5
    move-exception v15

    move-object v5, v15

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "recorder prepare failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "CameraThread"

    const-string v16, "Camera app finished"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :catch_6
    move-exception v15

    move-object v5, v15

    const-string v15, "CameraThread"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "recorder start failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "CameraThread"

    const-string v16, "Camera app finished"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0
.end method

.method public final stopPreview()V
    .locals 3

    const-string v2, "CameraThread"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const-string v0, "CameraThread"

    const-string v0, "stopPreview() - start sync"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    :cond_0
    const-string v0, "CameraThread"

    const-string v0, "stopPreview() - end sync"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v0, "stopPreview() - start async"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "CameraThread"

    const-string v0, "stopPreview() - end async"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CameraThread"

    const-string v0, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop_calculate_fps()V
    .locals 0

    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V
    .locals 8

    const-string v7, "CameraThread"

    const-string v0, "CameraThread"

    const-string v0, "storeTakenPicture() - start"

    invoke-static {v7, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    if-nez p1, :cond_5

    const-string v0, "CameraThread"

    const-string v0, "!!!!!!!! jpegData == null !!!!!!!!"

    invoke-static {v7, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p3, :cond_0

    const-string v0, "CameraThread"

    const-string v0, "No DCF information specified, use default value"

    invoke-static {v7, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isRequestSquare()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isUnknownServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    :cond_2
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/PictureSavedEvent;

    const-string v1, "Media.Saved"

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object v2, p1

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PictureSavedEvent;-><init>(Ljava/lang/String;[BZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_4
    const-string v0, "CameraThread"

    const-string v0, "storeTakenPicture() - end"

    invoke-static {v7, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "CameraThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jpegData != null, jpegData.length = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v2, "Media.SaveFailed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/DCFInfo;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public final storeTakenPicture([BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;
    .locals 13

    const-string v12, "CameraThread"

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "CameraThread"

    const-string v9, "Contacts request - directly get CONTACT_STYLE resolution"

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v5

    :goto_0
    return-object v9

    :cond_1
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eq p1, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "CameraThread"

    const-string v9, "not need to update image ratio"

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v5

    goto :goto_0

    :cond_3
    const-string v9, "CameraThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImageRatio - Current Resolution: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;

    move-result-object v7

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v6, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    const-string v9, "CameraThread"

    const-string v9, "Note: the number of resolution pairs for image ratio are not equal"

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v4, 0x0

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-nez v4, :cond_c

    const-string v9, "CameraThread"

    const-string v9, "update image ratio is fail"

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    const-string v9, "CameraThread"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateImageRatio - New Resolution: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v4

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v10}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4
.end method
