.class Lcom/android/camera/component/PanoramaController$3;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/scalado/camera/autorama/Autorama$AutoramaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoramaComplete(Lcom/scalado/caps/Session;Lcom/scalado/camera/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3300(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onAutoramaComplete()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDirectionChanged(Lcom/scalado/caps/autorama/Direction;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoramaListener.onDirectionChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, v5}, Lcom/android/camera/component/PanoramaController;->access$1502(Lcom/android/camera/component/PanoramaController;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$1500(Lcom/android/camera/component/PanoramaController;)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/camera/component/PanoramaController;->access$1502(Lcom/android/camera/component/PanoramaController;I)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, v5, v4}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3200(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "No UI to notify onDirectionChanged"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onIntermediateCaptureStart(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$3000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutoramaListener.onIntermediateCaptureStart()"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onIntermediateJpeg(Lcom/scalado/base/Buffer;I)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$1900(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AutoramaListener.onIntermediateJpeg()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const/16 v25, 0x0

    :try_start_0
    const-string v4, ".camera_temp"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {p1 .. p1}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v4

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/scalado/base/Buffer;->copyTo([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    new-instance v18, Landroid/media/ExifInterface;

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v4, 0x0

    const-string v5, "DateTime"

    aput-object v5, v24, v4

    const/4 v4, 0x1

    const-string v5, "FocalLength"

    aput-object v5, v24, v4

    const/4 v4, 0x2

    const-string v5, "GPSAltitude"

    aput-object v5, v24, v4

    const/4 v4, 0x3

    const-string v5, "GPSAltitudeRef"

    aput-object v5, v24, v4

    const/4 v4, 0x4

    const-string v5, "GPSLatitude"

    aput-object v5, v24, v4

    const/4 v4, 0x5

    const-string v5, "GPSLatitudeRef"

    aput-object v5, v24, v4

    const/4 v4, 0x6

    const-string v5, "GPSLongitude"

    aput-object v5, v24, v4

    const/4 v4, 0x7

    const-string v5, "GPSLongitudeRef"

    aput-object v5, v24, v4

    const/16 v4, 0x8

    const-string v5, "Make"

    aput-object v5, v24, v4

    const/16 v4, 0x9

    const-string v5, "Model"

    aput-object v5, v24, v4

    const/16 v4, 0xa

    const-string v5, "WhiteBalance"

    aput-object v5, v24, v4

    move-object/from16 v15, v24

    move-object v0, v15

    array-length v0, v0

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    aget-object v23, v15, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2000(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2100(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot extract EXIF from first frame"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v25, :cond_1

    :goto_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$2300(Lcom/android/camera/component/PanoramaController;Lcom/scalado/base/Buffer;)Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-result-object v16

    if-eqz v16, :cond_3

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/component/PanoramaUI;->getThumbnailWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/component/PanoramaUI;->getThumbnailHeight()I

    move-result v7

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Lcom/scalado/caps/Session;

    check-cast v16, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x42b4

    invoke-virtual {v8, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2204(Lcom/android/camera/component/PanoramaController;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/component/PanoramaController;->access$2200(Lcom/android/camera/component/PanoramaController;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/camera/component/PanoramaController;->access$2700(Lcom/android/camera/component/PanoramaController;)I

    move-result v6

    if-ne v5, v6, :cond_8

    const/4 v5, 0x1

    :goto_4
    invoke-static {v4, v5}, Lcom/android/camera/component/PanoramaController;->access$2602(Lcom/android/camera/component/PanoramaController;Z)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2600(Lcom/android/camera/component/PanoramaController;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2800(Lcom/android/camera/component/PanoramaController;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;ZZ)V

    :cond_5
    :goto_5
    return-void

    :catchall_0
    move-exception v4

    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    :cond_6
    throw v4

    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2400(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot create thumbnail image"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2500(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "No UI to notify onIntermediateJpeg"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/camera/component/PanoramaController;->access$2900(Lcom/android/camera/component/PanoramaController;)V

    goto :goto_5

    :cond_a
    if-eqz v25, :cond_1

    goto/16 :goto_1
.end method

.method public onIntermediatePostview(Lcom/scalado/base/Image;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoramaListener.onIntermediatePostview()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIntermediateShutter(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1600(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoramaListener.onIntermediateShutter(index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/component/PanoramaController;->access$1302(Lcom/android/camera/component/PanoramaController;F)F

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "No UI to notify onIntermediateShutter"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTracking(FFLcom/scalado/base/Image;)V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1000(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoramaListener.onTracking(dx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3e80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, v8, v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1200(Lcom/android/camera/component/PanoramaController;)Lcom/scalado/camera/autorama/Autorama;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/camera/autorama/Autorama;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v6

    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v6, v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1300(Lcom/android/camera/component/PanoramaController;)F

    move-result v0

    sub-float v7, p1, v0

    sget-object v0, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-ne v6, v0, :cond_2

    neg-float v7, v7

    :cond_2
    const/high16 v0, -0x4180

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, v8, v3}, Lcom/android/camera/component/PanoramaController;->access$1100(Lcom/android/camera/component/PanoramaController;ZZ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, p1}, Lcom/android/camera/component/PanoramaController;->access$1302(Lcom/android/camera/component/PanoramaController;F)F

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/component/PanoramaController;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1400(Lcom/android/camera/component/PanoramaController;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0}, Lcom/android/camera/component/PanoramaController;->access$1500(Lcom/android/camera/component/PanoramaController;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, v4}, Lcom/android/camera/component/PanoramaController;->hasAsyncMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v0, v4}, Lcom/android/camera/component/PanoramaController;->sendAsyncMessage(I)Z

    :cond_5
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$400(Lcom/android/camera/component/PanoramaController;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v5, v8

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/PanoramaController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/component/PanoramaController$3;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v0, p1}, Lcom/android/camera/component/PanoramaController;->access$1302(Lcom/android/camera/component/PanoramaController;F)F

    goto :goto_1
.end method
