.class Lcom/android/camera/component/PanoramaController$6$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$6;->onPictureTaken([BLcom/scalado/camera/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$6;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$6;[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$6$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->val$data:[B

    move-object/from16 v19, v0

    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    sget-object v25, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "No need to rotate panorama picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-object v5, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v25

    move-object v1, v5

    if-eq v0, v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Decode panorama picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Lcom/scalado/stream/BufferStream;

    new-instance v5, Lcom/scalado/base/Buffer;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>([B)V

    move-object/from16 v0, v19

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    new-instance v22, Lcom/scalado/base/Buffer;

    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v22

    move v1, v5

    invoke-direct {v0, v1}, Lcom/scalado/base/Buffer;-><init>(I)V

    new-instance v23, Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$4400(Lcom/android/camera/component/PanoramaController;Lcom/scalado/stream/Stream;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v15

    new-instance v26, Lcom/scalado/caps/Session;

    move-object/from16 v0, v26

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v24, Lcom/scalado/caps/filter/Rotate;

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    invoke-virtual/range {v24 .. v25}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Rotate panorama picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v25

    move-object v1, v5

    if-eq v0, v1, :cond_0

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v25

    move-object v1, v5

    if-eq v0, v1, :cond_0

    new-instance v16, Lcom/scalado/base/Size;

    invoke-virtual {v15}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-virtual {v15}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    move-object/from16 v15, v16

    :cond_0
    new-instance v13, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object v0, v13

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v5, 0x3f80

    invoke-virtual {v13, v5}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Encode panorama picture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v5

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move v2, v5

    move v3, v6

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v19, v20

    :cond_1
    :goto_1
    new-instance v11, Lcom/android/camera/component/PanoramaController$6$1$1;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/component/PanoramaController$6$1$1;-><init>(Lcom/android/camera/component/PanoramaController$6$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$4800(Lcom/android/camera/component/PanoramaController;[B)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v6}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v6

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/camera/component/PanoramaController;->access$900()Lcom/android/camera/DCFInfo;

    move-result-object v6

    :goto_3
    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v11

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5}, Lcom/android/camera/CameraThread;->endTakePicture()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v6}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraThread;->startPreview(I)V

    :cond_3
    return-void

    :pswitch_1
    sget-object v25, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$3900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Panorama picture needs to be rotated 90 degrees"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object v25, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Panorama picture needs to be rotated 270 degrees"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    sget-object v25, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Panorama picture needs to be rotated 180 degrees"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot rotate image"

    invoke-static {v5, v6, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$4900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "No UI to send review image"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    :cond_5
    sget-object v6, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    goto/16 :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$5000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "No UI to notify STITCH_COMPLETED"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
