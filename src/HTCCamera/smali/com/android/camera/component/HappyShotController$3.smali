.class Lcom/android/camera/component/HappyShotController$3;
.super Ljava/lang/Object;
.source "HappyShotController.java"

# interfaces
.implements Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/HappyShotController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HappyShotController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HappyShotController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllImagesAdded()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1000(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAllImagesAdded"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 0

    return-void
.end method

.method public onLTWCompleted(Lcom/scalado/base/Image;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$400(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLTWCompleted"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onMergedImage(Lcom/scalado/base/Image;)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/HappyShotController;->access$500(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "+onMergedImage:"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/rotate/OrientationConfig;->getUIOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    sget-object v24, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v16

    new-instance v11, Lcom/scalado/base/Buffer;

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getWidth()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v11, v5}, Lcom/scalado/base/Buffer;-><init>(I)V

    new-instance v22, Lcom/scalado/stream/BufferStream;

    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object v1, v11

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    new-instance v13, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v25, Lcom/scalado/caps/Session;

    move-object/from16 v0, v25

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    new-instance v23, Lcom/scalado/caps/filter/Rotate;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/Rotate;-><init>(Lcom/scalado/caps/Session;)V

    invoke-virtual/range {v23 .. v24}, Lcom/scalado/caps/filter/Rotate;->set(Lcom/scalado/caps/Rotation;)V

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v24

    move-object v1, v5

    if-eq v0, v1, :cond_0

    sget-object v5, Lcom/scalado/caps/Rotation;->TO_0:Lcom/scalado/caps/Rotation;

    move-object/from16 v0, v24

    move-object v1, v5

    if-eq v0, v1, :cond_0

    new-instance v17, Lcom/scalado/base/Size;

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getHeight()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/scalado/base/Size;-><init>(II)V

    move-object/from16 v16, v17

    :cond_0
    new-instance v14, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    move-object v0, v14

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    const/high16 v5, 0x3f80

    invoke-virtual {v14, v5}, Lcom/scalado/caps/codec/encoder/JpegEncoder;->setJpegQuality(F)V

    move-object/from16 v0, v25

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual/range {v22 .. v22}, Lcom/scalado/stream/BufferStream;->getPosition()J

    move-result-wide v5

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v11

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/scalado/base/Buffer;->get([BIII)V

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    sget v6, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    new-instance v5, Lcom/scalado/caps/Session;

    new-instance v6, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-direct {v5, v6}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;IZ)V

    const/16 v5, 0x5a

    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/camera/ImageUtility;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/component/HappyShotController;->access$600(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/component/HappyShotUI;

    move-result-object v6

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/component/HappyShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/component/HappyShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/HappyShotController;->access$700(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/CameraThread$StorePictureCallback;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v12

    move-object/from16 v1, v19

    move-object v2, v5

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/component/HappyShotController;->access$600(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/component/HappyShotUI;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/component/HappyShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/HappyShotController;->access$600(Lcom/android/camera/component/HappyShotController;)Lcom/android/camera/component/HappyShotUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/component/HappyShotUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Lcom/android/camera/CameraThread;->startPreview(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v6, v0

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/component/HappyShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/HappyShotController;->access$900(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-onMergedImage"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    :try_start_1
    sget-object v24, Lcom/scalado/caps/Rotation;->TO_90:Lcom/scalado/caps/Rotation;

    goto/16 :goto_0

    :pswitch_2
    sget-object v24, Lcom/scalado/caps/Rotation;->TO_270:Lcom/scalado/caps/Rotation;

    goto/16 :goto_0

    :pswitch_3
    sget-object v24, Lcom/scalado/caps/Rotation;->TO_180:Lcom/scalado/caps/Rotation;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object v15, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/HappyShotController;->access$800(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onMergedImage exception:"

    invoke-static {v5, v6, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onOutputDone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1100(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOutputDone"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReplacementRects(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/app/rewind/AutoSession$ReplaceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1200(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReplacementRects"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSourceImage(Lcom/scalado/base/Image;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HappyShotController$3;->this$0:Lcom/android/camera/component/HappyShotController;

    invoke-static {v0}, Lcom/android/camera/component/HappyShotController;->access$1300(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSourceImage"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
