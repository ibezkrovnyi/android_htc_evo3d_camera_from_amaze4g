.class public Lcom/android/camera/DisplayDevice;
.super Ljava/lang/Object;
.source "DisplayDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/DisplayDevice$CustomMMS;,
        Lcom/android/camera/DisplayDevice$CaptureButton;,
        Lcom/android/camera/DisplayDevice$ScreenRatio;,
        Lcom/android/camera/DisplayDevice$Resolution;
    }
.end annotation


# static fields
.field public static BUTTON_SIZE:I

.field public static CAMERA_PIC_SIZE_FOR_SQUARE:I

.field public static CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

.field public static CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

.field public static CAMERA_PREVIEW_WIDTH_FOR_4x3:I

.field public static CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

.field public static CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

.field public static DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

.field public static DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

.field public static DIALOG_HEIGHT:I

.field public static DIALOG_WIDTH:I

.field private static FOCUS_HEIGHT:I

.field private static FOCUS_WIDTH:I

.field public static HINT_LANDSCAPE_LEFT_PADDING:I

.field public static HINT_PORTRAIT_LEFT_PADDING:I

.field public static HINT_TOP_PADDING:I

.field public static INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

.field public static INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

.field public static MARKER_HEIGHT:I

.field public static final NOT_SENSE_2_0:Z

.field public static REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

.field public static REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

.field public static REMAINING_TEXT_MARGIN:I

.field public static REMAINING_TEXT_PADDING:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

.field public static SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

.field public static SCREEN_WIDTH:I

.field public static SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

.field public static SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

.field public static SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

.field public static final SUPPORT_FPS:Z

.field public static final SUPPORT_GPS_INDICATOR:Z

.field public static final SUPPORT_PREVIEW_ANIMATION:Z

.field public static SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

.field public static SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

.field private static TIMER_BASE_RECORDING_PORTRAIT:I

.field public static TIMER_BASE_SELF_TIMER:I

.field public static WHEEL_BOUNCING_PADDING:I

.field public static WHEEL_ROTATE_PADDING:I

.field public static WHEEL_VSIBLE_AREA_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v1, 0x3c

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->HVGA:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_3_2:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->Other:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput v2, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sput v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sput v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    sput v2, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    sput v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    sput v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    const/16 v0, 0x180

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    const/16 v0, 0x780

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_WIDTH:I

    const/16 v0, 0x438

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_CAPTURE_HEIGHT:I

    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    sput v2, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    sput v2, Lcom/android/camera/DisplayDevice;->CAMERA_PIC_SIZE_FOR_SQUARE:I

    sput v2, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    sput v2, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    sput v2, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    const/16 v0, 0x12c

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    const/16 v0, 0x140

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    const/16 v0, 0x1c

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    sput v5, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    const/16 v0, 0xa0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    const/16 v0, 0x14

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    sput v1, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

    sput v2, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

    sput v1, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_WITH_ZOOM_BAR:I

    sput v2, Lcom/android/camera/DisplayDevice;->INDICATORE_LAYOUT_MARGIN_NO_ZOOM_BAR:I

    const/16 v0, 0x1f

    sput v0, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_WITH_ZOOM_BAR:I

    sput v2, Lcom/android/camera/DisplayDevice;->SWITCH_BUTTON_MARGIN_NO_ZOOM_BAR:I

    const/16 v0, 0xac

    sput v0, Lcom/android/camera/DisplayDevice;->TIMER_BASE_SELF_TIMER:I

    sput v4, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_DEFAULT:I

    const/16 v0, 0x2ce

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_MARGIN_MAIN_BAR:I

    const/16 v0, 0x2e4

    sput v0, Lcom/android/camera/DisplayDevice;->SELF_PORTRAIT_HINT_WIDTH_FULL_SCREEN:I

    sput v2, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    const-string v0, "3.0"

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    sget-object v0, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v0, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sput-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    const/16 v0, 0x220

    sput v0, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    const/16 v0, 0x3c0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    const/16 v0, 0x220

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    const/16 v0, 0x280

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    const/16 v0, 0x1e0

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    const/16 v0, 0x110

    sput v0, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    const/16 v0, 0x500

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    const/16 v0, 0x2d0

    sput v0, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    const/16 v0, 0x4c

    sput v0, Lcom/android/camera/DisplayDevice;->BUTTON_SIZE:I

    const/4 v0, -0x2

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_HEIGHT:I

    const/16 v0, 0x1e0

    sput v0, Lcom/android/camera/DisplayDevice;->DIALOG_WIDTH:I

    const/16 v0, 0xa

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_PADDING:I

    const/16 v0, 0x64

    sput v0, Lcom/android/camera/DisplayDevice;->REMAINING_TEXT_MARGIN:I

    const/4 v0, 0x3

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_VSIBLE_AREA_PADDING:I

    sput v5, Lcom/android/camera/DisplayDevice;->MARKER_HEIGHT:I

    sput v4, Lcom/android/camera/DisplayDevice;->WHEEL_BOUNCING_PADDING:I

    const/16 v0, 0xd0

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_TOP_PADDING:I

    const/16 v0, 0x46

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_LANDSCAPE_LEFT_PADDING:I

    const/16 v0, 0x30

    sput v0, Lcom/android/camera/DisplayDevice;->HINT_PORTRAIT_LEFT_PADDING:I

    const/4 v0, 0x6

    sput v0, Lcom/android/camera/DisplayDevice;->WHEEL_ROTATE_PADDING:I

    sget-object v0, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v0, Lcom/android/camera/DisplayDevice$CustomMMS;->Default:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput-object v0, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sput v3, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    sput v3, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    sput v3, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DisablePen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static EnableGeoTagByDefault()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static NoResolutionChoiceIn2ndCam()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x28

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x42

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static apply720PPreview()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static canCancelFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static captrueFullSize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static contactsNoStorage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static forceFocusSound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static forceSutterSound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getFocusHeight(Landroid/content/Context;)I
    .locals 3

    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    return v1
.end method

.method public static getFocusWidth(Landroid/content/Context;)I
    .locals 3

    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->FOCUS_HEIGHT:I

    :cond_0
    sget v1, Lcom/android/camera/DisplayDevice;->FOCUS_WIDTH:I

    return v1
.end method

.method public static getRecordingTimerBaseHeight(Landroid/content/Context;I)I
    .locals 3

    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020158

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sput v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    :goto_0
    return v1

    :cond_2
    sget v1, Lcom/android/camera/DisplayDevice;->TIMER_BASE_RECORDING_PORTRAIT:I

    add-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method public static hasAutoFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static hasLimit250KB()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDefaultQuality720p()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support720p()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isDelayCreateImageThumb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDelayRecording()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayGPSindicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isDoubleShot()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isHalfPCB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isVirtualHWKeyRotated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isWideScreen()Z
    .locals 2

    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_4_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final needDelayZooming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static notSupportH264()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x27()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeMMS()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static showEffectInMenu()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showFocusWithoutDelay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static showISOInMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static showSceneInMenu()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support128kBitrate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static support1M2ndCam()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static support2M2ndCam()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x53

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x77

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamAutoEnhance()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x77

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static support2ndCamNoneMirror()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static support3DCamera()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static support3DHWSwitch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static support720p()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x60()Z

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

.method public static support720p2ndCam()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x53

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x78

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x77

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x76

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAutoUpload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportCamcorderHWButton()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportCamcorderHWSwitch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportCamcorderRotate()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportFaceDetection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportFastFrameRecording()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportGpuEffect()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportH264()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

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

.method public static supportHTCMediaUploader()Z
    .locals 2

    const-string v1, "3.0"

    const-string v0, "3.0"

    const-string v0, "3.0"

    invoke-virtual {v1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportHVGARecording()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportHWShareButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportISO()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportISO1250()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportIconRotate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportMMSVedioRecording()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportOnlyMP4VideoFormat()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT7201()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT7225()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT7x27()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT7x30()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT8x50()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportQCT8x60()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportScalado()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSecondCamera()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSensorFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSharpSensor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSharpSensorResolution()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSpecific2ndCamera()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x63

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportStereoRecord()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportSwitchButton()Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static supportTapScreenCapture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportThumbnailAlbumButton()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportTrackBallFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static supportVideoFormatChoosing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static supportWideScreen2ndCamera()Z
    .locals 2

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, -0x6c

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:B

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
