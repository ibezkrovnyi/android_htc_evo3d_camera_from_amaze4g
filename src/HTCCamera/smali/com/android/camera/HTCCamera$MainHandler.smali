.class Lcom/android/camera/HTCCamera$MainHandler;
.super Landroid/os/Handler;
.source "HTCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method private constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/HTCCamera$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/HTCCamera$MainHandler;-><init>(Lcom/android/camera/HTCCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 67

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ZoomTouch;

    move-result-object v5

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    sub-int v28, v45, v46

    rem-int/lit8 v53, v28, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    div-int/lit8 v6, v28, 0x5

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$402(Lcom/android/camera/HTCCamera;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    new-instance v6, Lcom/android/camera/ZoomTouch;

    invoke-direct {v6}, Lcom/android/camera/ZoomTouch;-><init>()V

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$302(Lcom/android/camera/HTCCamera;Lcom/android/camera/ZoomTouch;)Lcom/android/camera/ZoomTouch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ZoomTouch;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v7

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v46

    move/from16 v4, v45

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/ZoomTouch;->initZoomTouch(IIII)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget v6, v6, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$602(Lcom/android/camera/HTCCamera;Z)Z

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f020161

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCapture_press:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$602(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f020160

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_RECORDING_INDICATOR end - mRecording = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080055

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/view/ViewStub;

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080142

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080143

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080144

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$1102(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1200(Lcom/android/camera/HTCCamera;)V

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateRelativeLayout;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$602(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1402(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1602(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_f

    const-string v5, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnBlock Capture UI - start recorder, unblock time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v5

    const-string v6, "CaptureUI.Unblock"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x24

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-wide/16 v54, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getRecordingTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v54

    :goto_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v6

    move-object v0, v5

    move-wide/from16 v1, v54

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$2200(Lcom/android/camera/HTCCamera;JLandroid/widget/TextView;)Ljava/lang/String;

    move-result-object v63

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    const-wide/16 v5, 0xa

    cmp-long v5, v54, v5

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1000(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v54, v5

    if-gtz v5, :cond_17

    const/4 v5, 0x1

    move/from16 v64, v5

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_11

    if-nez v64, :cond_18

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_9
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080047

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/view/ViewStub;

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080145

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$902(Lcom/android/camera/HTCCamera;Lcom/android/camera/rotate/RotateRelativeLayout;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080143

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$1002(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v5

    if-nez v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1608(Lcom/android/camera/HTCCamera;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    sub-long v42, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long v6, v42, v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1522(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x320

    cmp-long v5, v5, v7

    if-gez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x320

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$1600(Lcom/android/camera/HTCCamera;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/RecordLimitCheck;->checkTimeOut_UI(J)J

    move-result-wide v54

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v54

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCamera;->access$2300(Lcom/android/camera/HTCCamera;J)Ljava/lang/String;

    move-result-object v63

    goto/16 :goto_7

    :cond_17
    const/4 v5, 0x0

    move/from16 v64, v5

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v58

    packed-switch v58, :pswitch_data_1

    const-string v5, "HTCCamera"

    const-string v6, "should not enter this state !!!!!!!!!!!!!!!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_9

    :pswitch_4
    const-string v5, "HTCCamera"

    const-string v6, "reach file size limit - stop to update recording indicator"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/RecordLimitCheck;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/RecordLimitCheck;->getUseTimeOut_API()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    const-string v5, "HTCCamera"

    const-string v6, "ui reach time limit - wait api reach time limit"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_19
    const-string v5, "HTCCamera"

    const-string v6, "ui reach time limit - and not use api"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_6
    const-string v5, "HTCCamera"

    const-string v6, "reach time limit to stop recorder"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_9

    :pswitch_7
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - TRIGGER_STOP_RECORD start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "Block Capture UI - Stop Recorder"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2602(Z)Z

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - TRIGGER_STOP_RECORD end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_INDICATOR start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_INDICATOR end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2500(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_INDICATOR end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_FINISH start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_FINISH end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x24

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/HTCCamera;->SCREEN_DELAY:I

    int-to-long v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$3300(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$3400(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    :cond_20
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - STOP_RECORDING_FINISH end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SUSPEND_ON_RECORDING start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$2800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$2900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3000(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$3600(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/ViewUtil;->enableMainButton(Landroid/widget/ImageView;Landroid/widget/Button;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    :cond_23
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SUSPEND_ON_RECORDING end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - COUNT_DOWN_SELFTIMER end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    sget v5, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_25

    sget v5, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27

    :cond_25
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v5

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_26
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - COUNT_DOWN_SELFTIMER end - storage error"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080053

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/view/ViewStub;

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f080180

    move-object/from16 v0, v38

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$3902(Lcom/android/camera/HTCCamera;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_28
    if-lez v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-nez v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->canTakePicture()Z

    move-result v5

    if-nez v5, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - COUNT_DOWN_SELFTIMER end - canTakePicture() = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v65

    move/from16 v0, v65

    move/from16 v1, v27

    if-ne v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1402(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    :cond_2a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    move-object v0, v6

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$1300(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    sub-int v7, v27, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v10, v0

    invoke-static {v10}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v10

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4102(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->hasShutterSound()Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "HTCCamera"

    const-string v6, "Play Countdown Sound"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f060004

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    :cond_2b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$800(Lcom/android/camera/HTCCamera;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2c
    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - self timer countdown"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    goto/16 :goto_0

    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$1400(Lcom/android/camera/HTCCamera;)J

    move-result-wide v7

    sub-long v40, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sub-int v6, v65, v27

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    sub-long v6, v40, v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1522(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x320

    cmp-long v5, v5, v7

    if-gez v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x320

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1500(Lcom/android/camera/HTCCamera;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    cmp-long v5, v5, v7

    if-lez v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const-wide/16 v6, 0x3e8

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$1502(Lcom/android/camera/HTCCamera;J)J

    goto/16 :goto_a

    :cond_2f
    const-string v5, "HTCCamera"

    const-string v6, "StartSelfTimer: Time Out"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "Block Capture UI - self timer timeout, take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4200(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4300(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4400(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4300(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_30
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4500(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/HTCCamera;->showMainBarItems(ZZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->stopCheckLoop()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->stopFaceDetection()V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v6, "Freeze UI - self timer timeout, take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4702(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v66, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v66

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/android/camera/HTCCamera;->access$4800(Lcom/android/camera/HTCCamera;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$4900(Lcom/android/camera/HTCCamera;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$5000(Lcom/android/camera/HTCCamera;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/HTCCamera;->reset_layout_from_surface(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - RESET_SURFACEVIEW_LAYOUT end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5100(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5200(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$5300(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$5400(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$5500(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$5600(Lcom/android/camera/HTCCamera;I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_11
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PROGRESS_STATUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v59, v0

    const/4 v5, 0x1

    move/from16 v0, v59

    move v1, v5

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    new-instance v6, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$5802(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v6, "Please Wait"

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    :cond_33
    :goto_b
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PROGRESS_STATUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5800(Lcom/android/camera/HTCCamera;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$5802(Lcom/android/camera/HTCCamera;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_b

    :pswitch_12
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - OPEN_CAPTURE_UI start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->openCaptureUI()V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - OPEN_CAPTURE_UI end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - CLOSE_CAPTURE_UI start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3700(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - CLOSE_CAPTURE_UI end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_ALBUM_CAMERAstart"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_35

    const-string v5, "HTCCamera"

    const-string v6, "End - Return to album after taking picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v36, Landroid/content/Intent;

    const-string v5, "FROM_CAMERA"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "preview_mode"

    const-string v6, "capture"

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, -0x1

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->setResult(ILandroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->finish()V

    :goto_c
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_ALBUM_CAMERA end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    const-string v5, "HTCCamera"

    const-string v6, "Start - Go to album after taking picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v36, Landroid/content/Intent;

    const-string v5, "FROM_CAMERA"

    move-object/from16 v0, v36

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.MainActivity"

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "preview_mode"

    const-string v6, "capture"

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "review_duration"

    const/4 v6, -0x1

    move-object/from16 v0, v36

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    :pswitch_15
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - Play video after recording video start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v36, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {}, Lcom/android/camera/CameraThread;->getLastContentUri()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v26, 0x1

    :try_start_0
    const-string v5, "com.htc.video"

    const-string v6, "com.htc.video.ViewVideo"

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "landscape"

    const/4 v6, 0x1

    move-object/from16 v0, v36

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_d
    if-nez v26, :cond_36

    :try_start_1
    const-string v5, "com.htc.album"

    const-string v6, "com.htc.album.TabPluginDevice.ViewVideo"

    move-object/from16 v0, v36

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "landscape"

    const/4 v6, 0x1

    move-object/from16 v0, v36

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_36
    :goto_e
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - Play video after recording video end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object/from16 v30, v5

    const/16 v26, 0x0

    const-string v5, "HTCCamera"

    const-string v6, "com.htc.video - play video fail"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catch_1
    move-exception v5

    move-object/from16 v30, v5

    const-string v5, "HTCCamera"

    const-string v6, "com.htc.album - play video fail"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :pswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    goto/16 :goto_0

    :pswitch_17
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PANEL_FADEOUT start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$5900(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PANEL_FADEOUT end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/Panel;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/Panel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/widget/Panel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/GpuEffectController;->openEffectMenu(ZZ)V

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->closeAllExtensionMenus()V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$6200(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->hideEffectControl()V

    goto/16 :goto_0

    :pswitch_1c
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PLAY_FOCUS_SOUND start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PLAY_FOCUS_SOUND end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1d
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ZOOMBAR_FADEOUT start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->hideZoomBar(Z)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ZOOMBAR_FADEOUT end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1e
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUSING start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v5, :cond_0

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_37

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_37
    :goto_f
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUSING end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$6600()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$6700()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_f

    :pswitch_1f
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_SUCCESS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v5, :cond_0

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3b

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020148

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_39
    :goto_10
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_SUCCESS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_10

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x36

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_10

    :pswitch_20
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_FAIL start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6300(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-eqz v5, :cond_0

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020149

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3c
    :goto_11
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_FAIL end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    goto :goto_11

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isPanelReady()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x36

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->setFocusFace()V

    goto :goto_11

    :pswitch_21
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_END start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3f
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SHOW_FOCUS_END end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_22
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - FINISH_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_40

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - FINISH_FOCUS end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6400(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_41

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - FINISH_FOCUS end - bCancelFocus = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    if-nez v5, :cond_42

    const-string v5, "HTCCamera"

    const-string v6, "Enter this state only when interrupt focus !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - FINISH_FOCUS end - mFocusingState = NO_FOCUSING"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    if-eqz v5, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/SensorHandler;->setifWaitFocus(Z)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x21

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    packed-switch v5, :pswitch_data_2

    const-string v5, "HTCCamera"

    const-string v6, "unknown focus state !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    :goto_12
    const-string v5, "HTCCamera"

    const-string v6, "Finish Focus - mFocusingState = NO_FOCUSING"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v5

    const-string v6, "Focus.Finished"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - FINISH_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7100(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - take focus end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    goto :goto_12

    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_45

    const-string v5, "HTCCamera"

    const-string v6, "take focus end, and then take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v6, "Freeze UI - take focus end, and then take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->lockOrientation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4702(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_47

    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - switch to video mode after focusing"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/camera/HTCCamera;->m_NeedTriggerRecord:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    goto/16 :goto_12

    :cond_47
    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - record after focusing"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_12

    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_49

    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - take picture after focusing"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/widget/CameraFocusWidget;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/widget/CameraFocusWidget;->setStatus(IFF)V

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_12

    :cond_49
    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - record after focusing"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$2400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_12

    :pswitch_27
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - CANCEL_FOCUS_END start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_4a

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - CANCEL_FOCUS_END end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$6402(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4b
    :goto_13
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - CANCEL_FOCUS_END end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6800(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4b

    goto :goto_13

    :pswitch_28
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ENABLE_SENSOR_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$7302(Lcom/android/camera/HTCCamera;Z)Z

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ENABLE_SENSOR_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "HTCCamera"

    const-string v6, ">>>>>>>>>>>>>>>>>>>>> sensor stable, check scene file !!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SensorHandler;->enterSceneChangeState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SensorHandler;->checkSceneChange()V

    goto/16 :goto_0

    :pswitch_2b
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_SENSOR_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v5

    if-nez v5, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/SensorHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/SensorHandler;->restartCheckSensorFocus()V

    goto/16 :goto_0

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->getRecorderStatus()Z

    move-result v5

    if-eqz v5, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->isStartDetection()Z

    move-result v5

    if-eqz v5, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->isCheckLoop()Z

    move-result v5

    if-nez v5, :cond_4f

    const/4 v5, 0x3

    sput v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v5

    sget-object v6, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v5, v6, :cond_51

    const/4 v5, 0x3

    sput v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v5

    sget-object v6, Lcom/android/camera/FaceDetection$STATE;->NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v5, v6, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->getFaceState()Lcom/android/camera/FaceDetection$STATE;

    move-result-object v5

    sget-object v6, Lcom/android/camera/FaceDetection$STATE;->STABLE_NO_FACE:Lcom/android/camera/FaceDetection$STATE;

    if-eq v5, v6, :cond_51

    const/4 v5, 0x3

    sput v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    goto/16 :goto_0

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7400(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_SENSOR_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2c
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_FACE_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v5

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-gtz v5, :cond_52

    const-string v5, "HTCCamera"

    const-string v6, "enter this state - must enable auto-capture !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_54

    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isMoving()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_55

    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->setStateWithFocus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)V

    :cond_56
    :goto_14
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_FACE_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->canSensorFocus()Z

    move-result v5

    if-nez v5, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->startCheckLoop()V

    goto/16 :goto_0

    :cond_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v7

    if-lez v7, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x45

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7602(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7700(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/camera/FaceDetection$Face;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)V

    goto :goto_14

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Lcom/android/camera/FaceDetection$Face;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    goto :goto_14

    :pswitch_2d
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_SELF_PORTRAIT start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_SELF_PORTRAIT end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5a
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7602(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7700(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Lcom/android/camera/FaceDetection$Face;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->handleFaceFocus(Lcom/android/camera/FaceDetection$Face;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - START_SELF_PORTRAIT end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v5

    if-nez v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->clearFocusFace()V

    goto/16 :goto_0

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x36

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x36

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_2f
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_5c

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5d

    const-string v5, "HTCCamera"

    const-string v6, "REPARE_FOCUS_BEFORE_CAPTURE - mFocusingState != FOCUSING_TAP_CAPTURE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$7800(Lcom/android/camera/HTCCamera;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$7900(Lcom/android/camera/HTCCamera;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/HTCCamera;->handleTouchFocus(II)Z

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREPARE_FOCUS_BEFORE_CAPTURE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    const-string v5, "HTCCamera"

    const-string v6, "CameraHandler Message - CHECK_FACE_DETECTION start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7100(Lcom/android/camera/HTCCamera;)V

    const-string v5, "HTCCamera"

    const-string v6, "CameraHandler Message - CHECK_FACE_DETECTION end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SCREEN_SAVE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->deactivate()V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - SCREEN_SAVE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    if-eqz v49, :cond_5e

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v49, v5, v6

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v48

    :cond_5e
    const-string v5, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SHOW_TOAST - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateToast;->show()V

    goto/16 :goto_0

    :pswitch_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v50, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/lang/String;

    if-eqz v49, :cond_5f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v49, v5, v6

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    :cond_5f
    const-string v5, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SHOW_3D_HINT - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateToast;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->updateOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateToast;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8000(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateToast;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/rotate/RotateToast;->show()V

    goto/16 :goto_0

    :pswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v32, v0

    const-string v5, "%d fps"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v39

    if-eqz v39, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto/16 :goto_0

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8200(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x4

    if-le v7, v5, :cond_61

    const/4 v7, 0x0

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x29

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x1f4

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_36
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREVIEW_DUPLICATE_START start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v5, :cond_62

    const-string v5, "HTCCamera"

    const-string v6, "mCameraThread == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-nez v5, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->findViewById(I)Landroid/view/View;

    move-result-object v61

    check-cast v61, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual/range {v61 .. v61}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f08013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$8302(Lcom/android/camera/HTCCamera;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    monitor-enter v5

    :goto_15
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v6, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_64

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v6, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    const-string v6, "HTCCamera"

    const-string v7, "mOneShotBitmap = null - wait()"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_15

    :catch_2
    move-exception v6

    move-object/from16 v31, v6

    :try_start_4
    const-string v6, "HTCCamera"

    const-string v7, "Exception"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :cond_64
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    new-instance v57, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v57

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v5, :cond_65

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, 0x42b4

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sget v7, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v13, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v8, v6, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v6, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v6, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v6, v6, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/high16 v17, 0x3f80

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/high16 v20, 0x3f00

    const/16 v21, 0x1

    const/high16 v22, 0x3f00

    invoke-direct/range {v14 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object/from16 v0, v57

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->Display_Orientation:I

    if-nez v5, :cond_66

    new-instance v25, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    mul-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, v57

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_16
    const/16 v29, 0x3e8

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide v5, v0

    move-object/from16 v0, v57

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2b

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide v7, v0

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREVIEW_DUPLICATE_START end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_66
    new-instance v25, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    mul-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    sget v8, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object/from16 v0, v57

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16

    :pswitch_37
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREVIEW_DUPLICATE_END start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    if-eqz v5, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8300(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    :cond_68
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - PREVIEW_DUPLICATE_END end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_38
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_69

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end - mIsUIReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_69
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/HTCCamera;->mFocusingState:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6a

    const-string v5, "HTCCamera"

    const-string v6, "UI Block - wait UI unBlock to update flash from restriction"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2c

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v5

    if-eqz v5, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8600(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_6b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x25

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/HTCCamera;->access$8400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FlashRestriction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/FlashRestriction;->getRestrictionHint()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_FLASH_FROM_RESTRICTION end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_39
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8700(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6c

    const-string v5, "HTCCamera"

    const-string v6, "mActivityOnPause == true, UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6c
    invoke-static {}, Lcom/android/camera/HTCCamera;->isKeyguardShow()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6d

    const-string v5, "HTCCamera"

    const-string v6, "mIsKeyguardShow = true, waiting for unlock screen"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->setWaitKeyguardBeforePreview(Z)V

    goto/16 :goto_0

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8800(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_CREATE_RESUME_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3a
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_CREATE_AFTER_PREVIEW start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8700(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6e

    const-string v5, "HTCCamera"

    const-string v6, "mActivityOnPause == true, UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8900(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$2000(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_CREATE_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3b
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_RESUME_AFTER_PREVIEW start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$8700(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6f

    const-string v5, "HTCCamera"

    const-string v6, "mActivityOnPause == true, UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9000(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4702(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9100(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_71

    const-string v5, "HTCCamera"

    const-string v6, "mWaitResetSettings = true, reset panel and set mWaitResetSettings to false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$4400(Lcom/android/camera/HTCCamera;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$9102(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    if-eqz v5, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->showEffectControl()V

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$9300(Lcom/android/camera/HTCCamera;I)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/HTCCamera;->bHoldFocusKey:Z

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    const-string v5, "HTCCamera"

    const-string v6, "UnBlock Capture UI - after start preview"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$502(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v5

    const-string v6, "CameraActivity.PreviewStarted"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderHWButton()Z

    move-result v5

    if-eqz v5, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->checkCamcorderButtonRecord()V

    :cond_73
    const-string v5, "HTCCamera"

    const-string v6, "DO_RESUME_AFTER_PREVIEW end - mIsUIReady = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_74

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x68

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_74
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - DO_RESUME_AFTER_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3c
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v5

    if-nez v5, :cond_75

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end, mThumbController == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v62, :cond_0

    invoke-virtual/range {v62 .. v62}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :cond_75
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "thumb_file_path"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v62

    move-object/from16 v2, v52

    move/from16 v3, v47

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/HTCCamera;->access$9500(Lcom/android/camera/HTCCamera;Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UPDATE_THUMBNAIL_BUTTON end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3d
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - LOAD_LATEST_THUMBNAIL start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v5

    if-eqz v5, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9400(Lcom/android/camera/HTCCamera;)Lcom/android/camera/ThumbnailController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ThumbnailController;->clearButtonImage()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_76

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v6, :cond_77

    const/16 v6, 0x1d

    :goto_17
    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_76
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - LOAD_LATEST_THUMBNAIL end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_77
    const/16 v6, 0x1e

    goto :goto_17

    :pswitch_3e
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UNBLOCK_CAPTURE_UI start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1702(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$1800(Lcom/android/camera/HTCCamera;)Lcom/android/camera/EventManager;

    move-result-object v5

    const-string v6, "CaptureUI.Unblock"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - UNBLOCK_CAPTURE_UI end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3f
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ENABLE_GARBAGE_COLLECTION start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - ENABLE_GARBAGE_COLLECTION end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9600(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9600(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9700(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9700(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-gtz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9800(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_78
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$1700()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ZoomBar;

    move-result-object v5

    if-eqz v5, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9900(Lcom/android/camera/HTCCamera;)Lcom/android/camera/widget/ZoomBar;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ZoomBar;->increasePosition(I)V

    :cond_79
    const/4 v5, 0x1

    move/from16 v0, v56

    move v1, v5

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x37

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x37

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-wide/16 v20, 0x96

    invoke-static/range {v15 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9600(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9600(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    if-eqz v5, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mPanel:Lcom/android/camera/widget/SlidingDrawer;

    invoke-virtual {v5}, Lcom/android/camera/widget/SlidingDrawer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3d

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10100(Lcom/android/camera/HTCCamera;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    sget v44, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_NO_EFFECT_BAR:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v5

    if-eqz v5, :cond_7c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/GpuEffectController;->isEffectBarVisible()Z

    move-result v5

    if-eqz v5, :cond_7c

    sget v44, Lcom/android/camera/DisplayDevice;->REMAINING_LAYOUT_MARGIN_WITH_EFFECT_BAR:I

    :cond_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v51

    check-cast v51, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v5, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    move-object/from16 v0, v51

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v0

    move-object/from16 v0, v51

    move v1, v5

    move v2, v6

    move v3, v7

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/16 v9, 0x12c

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v5

    new-instance v6, Lcom/android/camera/HTCCamera$MainHandler$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler$1;-><init>(Lcom/android/camera/HTCCamera$MainHandler;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e

    const-wide/16 v7, 0x7d0

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x12c

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/AnimationManager;->showAlphaAnimation(Landroid/view/View;FFII)Landroid/view/animation/AlphaAnimation;

    move-result-object v5

    new-instance v6, Lcom/android/camera/HTCCamera$MainHandler$2;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/HTCCamera$MainHandler$2;-><init>(Lcom/android/camera/HTCCamera$MainHandler;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10000(Lcom/android/camera/HTCCamera;)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :pswitch_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10200(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportIconRotate()Z

    move-result v5

    if-eqz v5, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isOrientationLockNeeded()Z

    move-result v5

    if-nez v5, :cond_7f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v5

    if-eqz v5, :cond_7d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10400(Lcom/android/camera/HTCCamera;I)V

    const-string v5, "HTCCamera"

    const-string v6, "Unfreeze UI !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10202(Lcom/android/camera/HTCCamera;Z)Z

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x2b

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$10300(Lcom/android/camera/HTCCamera;)I

    move-result v6

    invoke-static {v6}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10400(Lcom/android/camera/HTCCamera;I)V

    const-string v5, "HTCCamera"

    const-string v6, "Unfreeze UI !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10202(Lcom/android/camera/HTCCamera;Z)Z

    goto :goto_18

    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_18

    :cond_7f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->lockOrientation(I)V

    goto :goto_18

    :pswitch_44
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - LONG_PRESS_SW_CAPTURE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->canTriggerFocus()Z

    move-result v5

    if-eqz v5, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10500(Lcom/android/camera/HTCCamera;)V

    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10602(Lcom/android/camera/HTCCamera;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$700(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget v6, v6, Lcom/android/camera/HTCCamera;->mCapture_rest:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7500(Lcom/android/camera/HTCCamera;)V

    :goto_1a
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - LONG_PRESS_SW_CAPTURE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/HTCCamera;->updateDOTCaptureIcon(ZI)V

    goto :goto_19

    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10700(Lcom/android/camera/HTCCamera;)V

    goto :goto_1a

    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v5

    if-eqz v5, :cond_83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$6100(Lcom/android/camera/HTCCamera;)Lcom/android/camera/GpuEffectController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v6, v6, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v5, v6}, Lcom/android/camera/GpuEffectController;->resume(I)V

    goto/16 :goto_0

    :cond_83
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - mGpuEffectContr is not created now."

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_46
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - EFFECT_SWITCH_CAMERA start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->effectSwitchCamera()V

    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - EFFECT_SWITCH_CAMERA end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/FaceDetection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/FaceDetection;->getSelfPortraitState()I

    move-result v58

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10802(I)I

    packed-switch v58, :pswitch_data_3

    :goto_1b
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$10800()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_84

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$10908()I

    :goto_1c
    invoke-static {}, Lcom/android/camera/HTCCamera;->access$10800()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$11002(Lcom/android/camera/HTCCamera;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11100(Lcom/android/camera/HTCCamera;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x45

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$10800()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v18 .. v24}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :pswitch_48
    const/16 v5, 0xc8

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10802(I)I

    goto :goto_1b

    :pswitch_49
    const/4 v5, -0x1

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10802(I)I

    goto :goto_1b

    :cond_84
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$10902(I)I

    goto :goto_1c

    :pswitch_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$3900(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$4000(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_4b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_85

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11202(Lcom/android/camera/HTCCamera;Z)Z

    :cond_85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11200(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_87

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x48

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/HTCCamera;->access$2600()Z

    move-result v5

    if-eqz v5, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v18

    const/16 v19, 0x48

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x7d0

    invoke-static/range {v18 .. v24}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)I

    move-result v6

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/HTCCamera;->access$11300(Lcom/android/camera/HTCCamera;)I

    move-result v6

    iput v6, v5, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_87
    const-string v5, "HTCCamera"

    const-string v6, "mIsPreviewReady = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11202(Lcom/android/camera/HTCCamera;Z)Z

    goto/16 :goto_0

    :pswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v37

    if-eqz v37, :cond_88

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    :goto_1d
    const-string v5, "HTCCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MENU_3D_CAMERA_SWITCH] m3DButtonStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v7, v7, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11400(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    goto :goto_1d

    :pswitch_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11500(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    :pswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11600(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    :pswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11700(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    :pswitch_51
    const-string v5, "HTCCamera"

    const-string v6, "FADEOUT_SCENE_LANDSCAPE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$11800(Lcom/android/camera/HTCCamera;Z)V

    goto/16 :goto_0

    :pswitch_52
    const-string v5, "HTCCamera"

    const-string v6, "~~~~~~~SHOW_STABLE_ICON~~~~~~~"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$11900(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020003

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12000(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a0171

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4c

    const-wide/16 v7, 0xbb8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12400(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const v6, 0x7f020004

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12500(Lcom/android/camera/HTCCamera;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12100(Lcom/android/camera/HTCCamera;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a0171

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12600(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12300(Lcom/android/camera/HTCCamera;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/rotate/RotateRelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x4c

    const-wide/16 v7, 0xbb8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_54
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Mesage - AUTO_SMILE_CAPTURE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x53

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_89

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$7200(Lcom/android/camera/HTCCamera;)V

    :goto_1e
    const-string v5, "HTCCamera"

    const-string v6, "UIHandler Message - AUTO_SMILE_CAPTURE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_89
    const-string v5, "HTCCamera"

    const-string v6, "Unable to do auto smile capture in this mode"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$12700(Lcom/android/camera/HTCCamera;)V

    goto/16 :goto_0

    :pswitch_56
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v6}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/camera/HTCCamera;->access$5700(Lcom/android/camera/HTCCamera;IZ)V

    goto/16 :goto_0

    :pswitch_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$9200(Lcom/android/camera/HTCCamera;)Lcom/android/camera/MenuHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/MenuHandler;->updateStorageLocationItem()V

    goto/16 :goto_0

    :pswitch_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$000(Lcom/android/camera/HTCCamera;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x68

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/HTCCamera;->access$500(Lcom/android/camera/HTCCamera;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10400(Lcom/android/camera/HTCCamera;I)V

    const-string v5, "HTCCamera"

    const-string v6, "changetoVideoMode, set UI landscape, Freeze UI !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$10202(Lcom/android/camera/HTCCamera;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/HTCCamera$MainHandler;->this$0:Lcom/android/camera/HTCCamera;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/camera/rotate/OrientationConfig;->mapUIOrientationToDegree(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/HTCCamera;->access$12802(Lcom/android/camera/HTCCamera;I)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_1c
        :pswitch_17
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_2c
        :pswitch_2e
        :pswitch_40
        :pswitch_3f
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_1b
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_a
        :pswitch_9
        :pswitch_44
        :pswitch_46
        :pswitch_2d
        :pswitch_47
        :pswitch_4a
        :pswitch_45
        :pswitch_4b
        :pswitch_4c
        :pswitch_4e
        :pswitch_4f
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_4d
        :pswitch_33
        :pswitch_0
        :pswitch_7
        :pswitch_54
        :pswitch_56
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_55
        :pswitch_57
        :pswitch_58
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_23
        :pswitch_24
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_48
        :pswitch_49
    .end packed-switch
.end method
