.class Lcom/android/camera/CameraThread$MainHandler;
.super Landroid/os/Handler;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 78

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraHandler Message - SET_RESOLUTION start mMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - mCameraDevice is null in SET_RESOLUTION message"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v77, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v47, v0

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set Resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const-string v6, "pref_camera_image_ratio"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    sget v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    sget v6, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v77

    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$502(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v47

    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$602(Lcom/android/camera/CameraThread;I)I

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1002(Lcom/android/camera/CameraThread;Z)Z

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraHandler Message - SET_RESOLUTION end mode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_2
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraHandler Message - START_PREVIEW start mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1100(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x1f4

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    sget v6, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$302(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    sget v6, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$402(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v77

    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$702(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v47

    invoke-static {v0, v1}, Lcom/android/camera/CameraThread;->access$802(Lcom/android/camera/CameraThread;I)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->isLastCameraClosed()Z

    move-result v5

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x64

    invoke-static/range {v5 .. v11}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5, v7}, Lcom/android/camera/CameraThread;->startPreview(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v53

    if-eqz v53, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x43

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlock3DSwitch(Z)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x49

    const-wide/16 v7, 0x6a4

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v8, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v9, 0x48

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x12c

    invoke-static/range {v8 .. v14}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_9
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - WAIT_SELFTIMER start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1200(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1300(Lcom/android/camera/CameraThread;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    const-string v5, "CameraThread"

    const-string v6, "mTaking_picture == true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - mTaking_picture == true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x34

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "CameraThread"

    const-string v6, "mTaking_picture == true - mFocusingState = NO_FOCUSING"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    :cond_a
    const-string v5, "CameraThread"

    const-string v6, "WAIT_SELFTIMER"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    const-string v5, "CameraThread"

    const-string v6, "take picture, but mMode == VIDEO_MODE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - take picture, but mMode == VIDEO_MODE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x34

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "CameraThread"

    const-string v6, "mMode == VIDEO_MODE - mFocusingState = NO_FOCUSING"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setFocusingState(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFocusingState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    const-string v5, "CameraThread"

    const-string v6, "Block Capture UI - focus and then take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x22

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_3
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - WAIT_SELFTIMER end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getSelfTimer(Landroid/app/Activity;)I

    move-result v70

    if-lez v70, :cond_d

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start SelfTimer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v70

    move v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    :cond_d
    const-string v5, "CameraThread"

    const-string v6, "Block Capture UI - no self timer, take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_3

    :pswitch_4
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_PREVIEW start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/CameraThread;->access$1400(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_4
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_PREVIEW exit"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v5, "CameraThread"

    const-string v6, "mCameraDevice is null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TAKE FOCUS: X = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Y = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v44, :cond_f

    if-gez v45, :cond_10

    :cond_f
    const-string v5, "CameraThread"

    const-string v6, "TAKE FOCUS: X < 0 or Y < 0 !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_18

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v5

    if-nez v5, :cond_11

    sget-boolean v5, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v5, :cond_18

    :cond_11
    const-string v5, "CameraThread"

    const-string v6, "Play Focusing Sound"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v8, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v9, 0x15

    const v10, 0x7f060003

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0xc8

    invoke-static/range {v8 .. v14}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v5, :cond_13

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x18

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_14
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "touch-focus"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "touch-aec"

    const-string v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v5, "CameraThread"

    const-string v6, "Enable touch aec !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    const-string v5, "CameraThread"

    const-string v6, "Touch focus - disable continue AF !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "enable-caf"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    sget-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v5, :cond_16

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const-string v5, "CameraThread"

    const-string v6, "take focus again, so cancel auto focus, mTakeFocus = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x5

    const-wide/16 v7, 0x12c

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TOUCH_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "CameraThread"

    const-string v6, "Play Focusing Sound"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v8, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v9, 0x15

    const v10, 0x7f060003

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0xc8

    invoke-static/range {v8 .. v14}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1802(Lcom/android/camera/CameraThread;Z)Z

    goto/16 :goto_6

    :catch_0
    move-exception v5

    move-object/from16 v41, v5

    const-string v5, "CameraThread"

    const-string v6, "cancel focus failed"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :pswitch_6
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/camera/TIME;->AutoFocusCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v5}, Lcom/android/camera/TIME$Value;->Start()V

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/CameraThread;->access$1900(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    const-string v5, "CameraThread"

    const-string v6, "start focus, mTakeFocus = true"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2d

    const-wide/16 v7, 0x1f4

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1a
    :goto_8
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    move-object/from16 v41, v5

    const-string v5, "CameraThread"

    const-string v6, "auto focus failed"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v5, "CameraThread"

    const-string v6, "set focus false, continute taking picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;Z)V

    goto :goto_8

    :pswitch_7
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CANCEL_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v5, :cond_1b

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_9
    const-string v5, "CameraThread"

    const-string v6, "cancel auto focus, mTakeFocus = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x1d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CANCEL_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v5

    move-object/from16 v41, v5

    const-string v5, "CameraThread"

    const-string v6, "cancel focus failed"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    :pswitch_8
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2000(Lcom/android/camera/CameraThread;Z)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - RECORDING_FINISH_AUTO_FOCUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_PICTURE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1c

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_ERROR, can\'t take picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1302(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1d
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2102(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1302(Lcom/android/camera/CameraThread;Z)Z

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x34

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->resetAutoCaptureTask()V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_PICTURE end, mbCanTakePicture = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v5

    move-object/from16 v41, v5

    const-string v5, "CameraThread"

    const-string v6, "Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "Really take picture - mCaptureState = CAPTURE_STATE_TAKING_PICTURE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2300(Lcom/android/camera/CameraThread;)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - TAKE_PICTURE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraHandler Message - STOP_PREVIEW start  mMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$900(Lcom/android/camera/CameraThread;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    const-string v5, "CameraThread"

    const-string v6, "stopPreview"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - STOP_PREVIEW end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CLOSE_CAMERA_DELAYED start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x7d0

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_b
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CLOSE_CAMERA_DELAYED end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_c
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CameraHandler Message - CLOSE_CAMERA start mMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    iget v7, v7, Lcom/android/camera/CameraThread;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->close_camera()V

    :goto_c
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CLOSE_CAMERA end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v41

    const-string v5, "CameraThread"

    const-string v6, "Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :pswitch_d
    const-string v5, "CameraThread"

    const-string v6, "mCaptureState == CAPTURE_STATE_TAKING_PICTURE, not close camera, waiting ..."

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_WAITING_CLOSE_CAMERA"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->close_camera()V

    goto :goto_c

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_c

    :pswitch_10
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - QUIT_CAMERA_THREAD start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v5

    if-eqz v5, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_20

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState != CAPTURE_STATE_IDLE, not quit camera thread, waiting ..."

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    const-string v5, "CameraThread"

    const-string v6, "mCaptureState = CAPTURE_STATE_WAITING_QUIT_THREAD"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$102(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->close_camera()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Landroid/os/Looper;->quit()V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - QUIT_CAMERA_THREAD end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_RECORDING start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2100(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_21
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2102(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2200(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - mbCanTakePicture = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x34

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x3f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0xf

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x40

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    goto/16 :goto_0

    :catch_5
    move-exception v5

    move-object/from16 v41, v5

    const-string v5, "CameraThread"

    const-string v6, "Exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "CameraThread"

    const-string v6, "Play start record sound"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f060004

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x36

    const-wide/16 v7, 0x12c

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_24
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_RECORDING end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_RECORDING_DELAY start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraThread;->start_video_recording(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_25
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - START_RECORDING_DELAY end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - RECORDING_MESSAGE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_26

    const-string v5, "CameraThread"

    const-string v6, "record, but mMode != VIDEO_MODE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "UnBlock Capture UI - record, but mMode != VIDEO_MODE"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2400(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :goto_e
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - RECORDING_MESSAGE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    const-string v5, "CameraThread"

    const-string v6, "Recording Message - Stop Recording"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x16

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$902(Lcom/android/camera/CameraThread;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1600(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_28

    const-string v5, "CameraThread"

    const-string v6, "Play end record sound"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->PlaySound(I)V

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x41

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_e

    :pswitch_14
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - ENTER_VIDEO_MODE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_29

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_29
    :goto_f
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - ENTER_VIDEO_MODE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x39

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_f

    :pswitch_15
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - EXIT_VIDEO_MODE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "CameraThread"

    const-string v6, "Exit Video Mode - Stop Recording"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2500(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$1702(Lcom/android/camera/CameraThread;Z)Z

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/camera/CameraThread;->mMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v5

    if-nez v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x1d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_2c
    :goto_10
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - EXIT_VIDEO_MODE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x39

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_10

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v5, "incandescent"

    move-object/from16 v0, v76

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[choose_Incandescent]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "exposure-compensation"

    const/4 v7, 0x5

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v56

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[adjust_exposure]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v30

    if-eqz v30, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "postproc-enable-imboost"

    const-string v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "postproc-enable-denoise"

    const-string v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "postproc-enable-imboost"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "postproc-enable-denoise"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2602(Lcom/android/camera/CameraThread;Z)Z

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[STEREO_RECORDING] Stereo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/CameraThread;->access$2600(Lcom/android/camera/CameraThread;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "iso"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setColorEffect(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const/4 v6, 0x5

    move-object v0, v5

    move-object/from16 v1, v55

    move/from16 v2, v56

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v55

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v5, "contrast"

    move-object/from16 v0, v55

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[adjust_contract]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    const-string v5, "saturation"

    move-object/from16 v0, v55

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[adjust_saturation]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string v5, "sharpness"

    move-object/from16 v0, v55

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[adjust_sharpness]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v64

    if-eqz v64, :cond_31

    invoke-virtual/range {v64 .. v64}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "off"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Ljava/lang/String;

    if-eqz v71, :cond_32

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set flash mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_32
    const-string v5, "CameraThread"

    const-string v6, "set flash mode - null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_33

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CHECK_RECORD_SIZE_LIMIT end - mRecording = false"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v57

    if-nez v57, :cond_34

    const-string v5, "CameraThread"

    const-string v6, "mRecordLimitCheck = null !!! - CHECK_RECORD_SIZE_LIMIT end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_34
    invoke-virtual/range {v57 .. v57}, Lcom/android/camera/RecordLimitCheck;->checkSizeLimit()V

    invoke-virtual/range {v57 .. v57}, Lcom/android/camera/RecordLimitCheck;->getLimitState()I

    move-result v66

    packed-switch v66, :pswitch_data_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x16

    invoke-virtual/range {v57 .. v57}, Lcom/android/camera/RecordLimitCheck;->getCheckSizeDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    const v7, 0x7f0a0033

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v5, "CameraThread"

    const-string v6, "reach FATA32 file \'system file size limitation"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_20
    const-string v5, "CameraThread"

    const-string v6, "Block Capture UI - FILE_SIZE_LIMIT stop recorder"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_21
    const-string v5, "CameraThread"

    const-string v6, "Block Capture UI - DISK_SPACE_LIMIT stop recorder"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const/4 v5, 0x3

    sput v5, Lcom/android/camera/CameraThread;->Storage_Status:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    const v7, 0x7f0a0028

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_22
    const-string v5, "CameraThread"

    const-string v6, "reach time out - not to check file size limit"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2700(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/CameraThread;->access$2800(Lcom/android/camera/CameraThread;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/camera/CameraThread;->access$2802(Lcom/android/camera/CameraThread;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x19

    const-wide/16 v7, 0x3e8

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :pswitch_24
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - LOAD_SETTINGS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$2900(Lcom/android/camera/CameraThread;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x23

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x2d

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - LOAD_SETTINGS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_25
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    if-nez v5, :cond_35

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v75, v11

    :goto_12
    if-eqz v9, :cond_0

    if-eqz v75, :cond_0

    const-string v26, "IMAG%"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v5, 0x3

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v10, v5

    const/4 v5, 0x2

    const-string v6, "datetaken"

    aput-object v6, v10, v5

    const-string v11, "_display_name LIKE ?"

    const/4 v5, 0x1

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v26, v12, v5

    const-string v13, "datetaken ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v5, 0x3

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v12, v5

    const/4 v5, 0x2

    const-string v6, "datetaken"

    aput-object v6, v12, v5

    const-string v13, "bucket_display_name=\'100MEDIA\'"

    const/4 v14, 0x0

    const-string v15, "datetaken ASC"

    move-object/from16 v11, v75

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    const/16 v67, 0x0

    const/16 v49, 0x0

    const/16 v48, 0x0

    const/16 v50, 0x0

    if-eqz v38, :cond_36

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_36

    :try_start_6
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->moveToLast()Z

    const-string v5, "_data"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v38

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    const-string v5, "_id"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v38

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    const-string v5, "datetaken"

    move-object/from16 v0, v38

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v38

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v50

    :goto_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v73, 0x0

    const/16 v74, 0x0

    if-eqz v39, :cond_37

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_37

    :try_start_7
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToLast()Z

    const-string v5, "_data"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    const-string v5, "datetaken"

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v39

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    move-result-object v74

    :goto_14
    const/16 v68, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-nez v38, :cond_38

    if-nez v39, :cond_38

    const/16 v28, 0x0

    :goto_15
    if-nez v28, :cond_41

    const-string v5, "CameraThread"

    const-string v6, "Both Image/Video cursor are null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6e

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v75, v11

    goto/16 :goto_12

    :catch_6
    move-exception v5

    move-object/from16 v43, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v43 .. v43}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    const/16 v38, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_7
    move-exception v5

    move-object/from16 v42, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    const/16 v38, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_36
    const-string v5, "CameraThread"

    const-string v6, "thumbnail Image Cursor == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catch_8
    move-exception v5

    move-object/from16 v43, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v43 .. v43}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    const/16 v39, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_9
    move-exception v5

    move-object/from16 v42, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    const/16 v39, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    const-string v5, "CameraThread"

    const-string v6, "thumbnail Video Cursor == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_38
    if-nez v38, :cond_3a

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_39

    const/16 v28, 0x0

    goto/16 :goto_15

    :cond_39
    const/16 v28, 0x2

    goto/16 :goto_15

    :cond_3a
    if-nez v39, :cond_3c

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3b

    const/16 v28, 0x0

    goto/16 :goto_15

    :cond_3b
    const/16 v28, 0x1

    goto/16 :goto_15

    :cond_3c
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3d

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3d

    const/16 v28, 0x0

    goto/16 :goto_15

    :cond_3d
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3e

    const/16 v28, 0x1

    goto/16 :goto_15

    :cond_3e
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_3f

    const/16 v28, 0x2

    goto/16 :goto_15

    :cond_3f
    const/16 v35, 0x0

    move-object/from16 v0, v50

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v35

    if-lez v35, :cond_40

    const/16 v28, 0x1

    goto/16 :goto_15

    :cond_40
    const/16 v28, 0x2

    goto/16 :goto_15

    :cond_41
    const/4 v5, 0x1

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_45

    :try_start_8
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create image thumbnail - path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v0, v49

    move v1, v5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_b

    move-result-object v67

    move-object/from16 v68, v49

    const/16 v27, 0x0

    :cond_42
    :goto_16
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    const-string v5, "thumb_file_path"

    move-object/from16 v0, v34

    move-object v1, v5

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v58

    const/16 v5, 0x32

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->what:I

    move/from16 v0, v27

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v58

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v67

    move-object/from16 v1, v58

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v38, :cond_43

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->close()V

    const/16 v38, 0x0

    :cond_43
    if-eqz v39, :cond_44

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    const/16 v39, 0x0

    :cond_44
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_a
    move-exception v5

    move-object/from16 v40, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_b
    move-exception v5

    move-object/from16 v60, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    :cond_45
    const/4 v5, 0x2

    move/from16 v0, v28

    move v1, v5

    if-ne v0, v1, :cond_42

    :try_start_9
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create video thumbnail - path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v0, v73

    move v1, v5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_d

    move-result-object v67

    move-object/from16 v68, v73

    const/16 v27, 0x1

    goto/16 :goto_16

    :catch_c
    move-exception v5

    move-object/from16 v40, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :catch_d
    move-exception v5

    move-object/from16 v60, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createVideoThumbnail() throws java.lang.OutOfMemoryError"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    :pswitch_26
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_IMAGE_THUMB start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    if-nez v5, :cond_48

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    :cond_46
    :goto_17
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v10, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v10, v5

    const-string v11, "bucket_display_name=\'100MEDIA\'"

    const/4 v12, 0x0

    const-string v13, "datetaken ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    const/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v48, 0x0

    if-eqz v37, :cond_49

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_49

    :try_start_a
    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToLast()Z

    const-string v5, "_data"

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    const-string v5, "_id"

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    move-result-object v48

    :try_start_b
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create image thumbnail - path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    move-object/from16 v0, v69

    move v1, v5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_11

    move-result-object v67

    :goto_18
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    const-string v5, "thumb_file_path"

    move-object/from16 v0, v34

    move-object v1, v5

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v58

    const/16 v5, 0x32

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v58

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v67

    move-object/from16 v1, v58

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz v37, :cond_47

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    const/16 v37, 0x0

    :cond_47
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_48
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_17

    :catch_e
    move-exception v5

    move-object/from16 v43, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v43 .. v43}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    const/16 v37, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_f
    move-exception v5

    move-object/from16 v42, v5

    const-string v5, "CameraThread"

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v42

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    const/16 v37, 0x0

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_IMAGE_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_10
    move-exception v5

    move-object/from16 v40, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createImageThumbnail() throws exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :catch_11
    move-exception v5

    move-object/from16 v60, v5

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createImageThumbnail() throws java.lang.OutOfMemoryError"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v60

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    :cond_49
    const-string v5, "CameraThread"

    const-string v6, "thumbnail Image Cursor == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_27
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_VIDEO_THUMB start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v73, 0x0

    if-nez v63, :cond_4d

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    if-nez v5, :cond_4c

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->PHONE_CONTENT_URI:Landroid/net/Uri;

    :cond_4a
    :goto_19
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v5, 0x2

    new-array v12, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v12, v5

    const/4 v5, 0x1

    const-string v6, "_data"

    aput-object v6, v12, v5

    const-string v13, "bucket_display_name=\'100MEDIA\'"

    const/4 v14, 0x0

    const-string v15, "datetaken ASC"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    if-eqz v37, :cond_4b

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4b

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->moveToLast()Z

    const-string v5, "_data"

    move-object/from16 v0, v37

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v37

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    :cond_4b
    :goto_1a
    if-nez v73, :cond_4e

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_VIDEO_THUMB end - video_path = null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4c
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4a

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_19

    :cond_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Ljava/lang/String;

    goto :goto_1a

    :cond_4e
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create video thumbnail - path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v46, 0x0

    const/4 v5, 0x3

    :try_start_c
    move-object/from16 v0, v73

    move v1, v5

    invoke-static {v0, v1}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_12

    move-result-object v46

    :goto_1b
    new-instance v34, Landroid/os/Bundle;

    invoke-direct/range {v34 .. v34}, Landroid/os/Bundle;-><init>()V

    const-string v5, "thumb_file_path"

    move-object/from16 v0, v34

    move-object v1, v5

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v58

    const/16 v5, 0x32

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v58

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v58

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CREATE_VIDEO_THUMB end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_12
    move-exception v40

    const-string v5, "CameraThread"

    const-string v6, "ThumbnailUtil.createVideoThumbnail() throws exception"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    :pswitch_28
    sget-boolean v5, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    if-eqz v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x1f

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x1f

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v5, "CameraThread"

    const-string v6, "Can\'t disable touch aec, send message again"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "touch-aec"

    const-string v7, "off"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v5, "CameraThread"

    const-string v6, "Disable touch aec !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_50
    const-string v5, "CameraThread"

    const-string v6, "Can\'t disable touch aec, mCamController == null"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_29
    sget-boolean v5, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget v5, v5, Lcom/android/camera/CameraThread;->mMode:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    if-eqz v5, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v5, "CameraThread"

    const-string v6, "ENABLE_CAF - enable continue AF !!!"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "enable-caf"

    const-string v7, "on"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    goto/16 :goto_0

    :pswitch_2a
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_FACE_OPTIONS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-options"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_52
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_FACE_OPTIONS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2b
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_HIGH start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "1_lomo"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_53
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_HIGH end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2c
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_GREEN start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "1_lomo"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_54
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_GREEN end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2d
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_RED start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "1_lomo"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_55
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VINTAGE_RED end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2e
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DEPTH start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "2_dof"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    shr-int/lit8 v14, v5, 0x1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    shr-int/lit8 v15, v5, 0x1

    const/16 v16, 0x1c2

    const/16 v17, 0x122

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_56
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DEPTH end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2f
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DISTORTION start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "3_distortion"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    shr-int/lit8 v14, v5, 0x1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    shr-int/lit8 v15, v5, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_57
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DISTORTION end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_30
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VIGNETTE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "4_spotlight"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/16 v14, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    shr-int/lit8 v14, v5, 0x1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    shr-int/lit8 v15, v5, 0x1

    const/16 v16, 0x212

    const/16 v17, 0x172

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_58
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_VIGNETTE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_31
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_SEPIA start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "1_lomo"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_59
    const-string v5, "[ANALYTIC_com.android.camera]"

    const-string v6, "[choose_sepia]complete"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_SEPIA end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_32
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DOTS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "5_dots"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/16 v14, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_5a
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_DOTS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_33
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_CONTRAST start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "6_contrast"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_5b
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_CONTRAST end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_34
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_TS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "7_ts"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/16 v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    shr-int/lit8 v14, v5, 0x1

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    shr-int/lit8 v15, v5, 0x1

    const/16 v16, 0x1c2

    const/16 v17, 0x122

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    :cond_5c
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_GE_TS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "0_bypass"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setGpuEffectType(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param0"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    goto/16 :goto_0

    :pswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v36, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/Bundle;

    if-eqz v34, :cond_0

    const-string v5, "coordinate_array"

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v36

    const-string v5, "is_moving"

    move-object/from16 v0, v34

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v12

    const-string v13, "GE-param1"

    const/4 v5, 0x0

    aget v14, v36, v5

    const/4 v5, 0x1

    aget v15, v36, v5

    const/4 v5, 0x2

    aget v16, v36, v5

    const/4 v5, 0x3

    aget v17, v36, v5

    invoke-virtual/range {v12 .. v18}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    goto/16 :goto_0

    :pswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v19

    const-string v20, "GE-param0"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v19 .. v25}, Lcom/android/camera/CameraController;->setGEParam(Ljava/lang/String;IIIIZ)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->injectGEParam()Z

    goto/16 :goto_0

    :pswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    const-string v5, "contrast"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    const-string v5, "saturation"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5d

    const-string v5, "sharpness"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v55

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :cond_5e
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_5f
    const-string v5, "exposure-compensation"

    move-object v0, v5

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setExposureCompensation(I)V

    goto :goto_1c

    :pswitch_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isBlockCaptureUI()Z

    move-result v5

    if-eqz v5, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2b

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v6, 0x2b

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto/16 :goto_0

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->isUIFreeze()Z

    move-result v5

    if-eqz v5, :cond_61

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v5

    move/from16 v62, v5

    :goto_1d
    const/4 v5, -0x1

    move/from16 v0, v62

    move v1, v5

    if-ne v0, v1, :cond_62

    const-string v5, "CameraThread"

    const-string v6, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v62, 0x0

    :goto_1e
    invoke-static/range {v62 .. v62}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v71

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola_orientation"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v71

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getLastOrientation()I

    move-result v5

    move/from16 v62, v5

    goto :goto_1d

    :cond_62
    add-int/lit8 v62, v62, 0x5a

    goto :goto_1e

    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3000(Lcom/android/camera/CameraThread;)V

    goto/16 :goto_0

    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3100(Lcom/android/camera/CameraThread;)Z

    move-result v5

    if-nez v5, :cond_63

    if-nez v52, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v5

    if-nez v5, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "taking-picture-zoom"

    sget v7, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_0

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "taking-picture-zoom"

    invoke-virtual/range {v51 .. v51}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_1f

    :pswitch_3c
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CHECK_INTERNAL_STORAGE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->checkInternalStorage()Z

    move-result v5

    if-nez v5, :cond_64

    const-string v5, "CameraThread"

    const-string v6, "low internal storage ..."

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    invoke-static {v5, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x25

    const v7, 0x104032c

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_64
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CHECK_INTERNAL_STORAGE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3d
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CHECK_STORAGE_STATUS start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3200(Lcom/android/camera/CameraThread;)V

    sget v5, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v5, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v7

    if-eqz v7, :cond_65

    const-wide/16 v7, 0x0

    :goto_20
    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_21
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - CHECK_STORAGE_STATUS end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_65
    const-wide/16 v7, 0x1f4

    goto :goto_20

    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v6, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v7

    if-eqz v7, :cond_67

    const-wide/16 v7, 0x0

    :goto_22
    invoke-static {v5, v6, v7, v8}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    goto :goto_21

    :cond_67
    const-wide/16 v7, 0x1f4

    goto :goto_22

    :pswitch_3e
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_SCENE_MODE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_68

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v65, v0

    check-cast v65, Ljava/lang/String;

    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SET_SCENE_MODE - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_68
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_SCENE_MODE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const-string v6, "pref_blink detection"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v32, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "103"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const-string v6, "pref_smile_capture"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "110"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "100"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_40
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_SMILE_CAPTURE start"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const-string v6, "pref_smile_capture"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    if-eqz v5, :cond_6b

    if-eqz v32, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "110"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    :goto_23
    const-string v5, "CameraThread"

    const-string v6, "CameraHandler Message - SET_SMILE_CAPTURE end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v5

    const-string v6, "pref_blink detection"

    invoke-static {v5, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v29

    if-eqz v29, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "103"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;

    move-result-object v5

    const-string v6, "ola-sbd-options"

    const-string v7, "100"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/CameraThread;->access$3300(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;

    move-result-object v5

    const-string v6, "PowerWarning.Received"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread$MainHandler;->this$0:Lcom/android/camera/CameraThread;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraThread;->changeZoom(I)V

    goto/16 :goto_0

    :cond_6e
    move-object/from16 v75, v11

    goto/16 :goto_12

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_0
        :pswitch_b
        :pswitch_23
        :pswitch_4
        :pswitch_0
        :pswitch_24
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_2a
        :pswitch_2c
        :pswitch_2b
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_39
        :pswitch_38
        :pswitch_8
        :pswitch_29
        :pswitch_3a
        :pswitch_3b
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_3c
        :pswitch_3d
        :pswitch_12
        :pswitch_18
        :pswitch_19
        :pswitch_25
        :pswitch_3e
        :pswitch_41
        :pswitch_3f
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_42
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method
