.class Lcom/android/camera/component/HappyShotController$7;
.super Ljava/lang/Object;
.source "HappyShotController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HappyShotController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HappyShotController;

.field final synthetic val$cameraController:Lcom/android/camera/CameraController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HappyShotController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    iput-object p2, p0, Lcom/android/camera/component/HappyShotController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/HappyShotController$7;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$1900(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JPEG Callback["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/component/HappyShotController;->access$1700(Lcom/android/camera/component/HappyShotController;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], JPEG-data size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    :goto_0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$1700(Lcom/android/camera/component/HappyShotController;)I

    move-result v14

    if-nez v14, :cond_2

    const/4 v12, 0x0

    :try_start_0
    const-string v14, ".camera_temp"

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    new-instance v5, Landroid/media/ExifInterface;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const/16 v14, 0xb

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "DateTime"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    const-string v15, "FocalLength"

    aput-object v15, v11, v14

    const/4 v14, 0x2

    const-string v15, "GPSAltitude"

    aput-object v15, v11, v14

    const/4 v14, 0x3

    const-string v15, "GPSAltitudeRef"

    aput-object v15, v11, v14

    const/4 v14, 0x4

    const-string v15, "GPSLatitude"

    aput-object v15, v11, v14

    const/4 v14, 0x5

    const-string v15, "GPSLatitudeRef"

    aput-object v15, v11, v14

    const/4 v14, 0x6

    const-string v15, "GPSLongitude"

    aput-object v15, v11, v14

    const/4 v14, 0x7

    const-string v15, "GPSLongitudeRef"

    aput-object v15, v11, v14

    const/16 v14, 0x8

    const-string v15, "Make"

    aput-object v15, v11, v14

    const/16 v14, 0x9

    const-string v15, "Model"

    aput-object v15, v11, v14

    const/16 v14, 0xa

    const-string v15, "WhiteBalance"

    aput-object v15, v11, v14

    move-object v2, v11

    array-length v8, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_7

    aget-object v10, v2, v6

    invoke-virtual {v5, v10}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$100(Lcom/android/camera/component/HappyShotController;)Ljava/util/Hashtable;

    move-result-object v14

    invoke-virtual {v14, v10, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v14

    move-object v4, v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$2000(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Cannot extract EXIF from first frame"

    invoke-static {v14, v15, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v12, :cond_2

    :goto_2
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$1704(Lcom/android/camera/component/HappyShotController;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$1700(Lcom/android/camera/component/HappyShotController;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/camera/component/HappyShotController;->access$1800(Lcom/android/camera/component/HappyShotController;)I

    move-result v15

    if-lt v14, v15, :cond_6

    const/4 v14, 0x1

    move v7, v14

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$1700(Lcom/android/camera/component/HappyShotController;)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v14, v3}, Lcom/scalado/app/rewind/AutoSession;->addJpeg(Ljava/nio/ByteBuffer;)V

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->val$cameraController:Lcom/android/camera/CameraController;

    move-object v14, v0

    const-string v15, "picture-count"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->val$cameraController:Lcom/android/camera/CameraController;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->val$cameraThread:Lcom/android/camera/CameraThread;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/camera/CameraThread;->endTakePicture()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$2100(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "+getMergedImage"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/camera/component/HappyShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v14}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$2200(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "-getMergedImage"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/HappyShotController$7;->this$0:Lcom/android/camera/component/HappyShotController;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/camera/component/HappyShotController;->access$2300(Lcom/android/camera/component/HappyShotController;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "JPEG Callback end"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v14

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_5
    throw v14

    :cond_6
    const/4 v14, 0x0

    move v7, v14

    goto :goto_3

    :cond_7
    if-eqz v12, :cond_2

    goto/16 :goto_2
.end method
