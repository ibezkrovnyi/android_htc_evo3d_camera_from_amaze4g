.class public Lcom/android/camera/component/ThumbnailController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ThumbnailController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE_IMAGE:I = 0x1

.field private static final MEDIA_TYPE_VIDEO:I = 0x2

.field public static final MSG_CREATE_THUMB_IMAGE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Thumbnail Controller"

.field private static final STATIC_TAG:Ljava/lang/String; = "ThumbnailController"

.field private static final THUMBNAIL_IMAGE_POOL_SIZE:I = 0x5

.field private static final m_ThumbnailImagePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m_IsDeletingMedia:Z

.field private m_LatestSavedMediaFilePath:Ljava/lang/String;

.field private m_LatestThumbnailImagePathForUI:Ljava/lang/String;

.field private final m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

.field private final m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

.field private m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Thumbnail Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    new-instance v0, Lcom/android/camera/component/ThumbnailController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$1;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ThumbnailController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$2;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/ThumbnailController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ThumbnailController$3;-><init>(Lcom/android/camera/component/ThumbnailController;)V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/component/ThumbnailController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestSavedMediaFilePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/ThumbnailController;->onMediaSaved()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/component/ThumbnailController;)Lcom/android/camera/component/ThumbnailUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v10, "ThumbnailController"

    const-string v8, "ThumbnailController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create3DVideoThumbnailImage("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v8, v9}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2}, Lcom/android/camera/ImageUtility;->convertToScaladoImage(Landroid/graphics/Bitmap;)Lcom/scalado/base/Image;

    move-result-object v3

    new-instance v0, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v0, v3}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance v7, Lcom/scalado/caps/Session;

    invoke-direct {v7, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/4 v8, 0x0

    invoke-static {v7, v5, v4, v8}, Lcom/android/camera/component/ThumbnailController;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v8

    :catch_0
    move-exception v8

    move-object v1, v8

    :try_start_1
    const-string v8, "ThumbnailController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot create thumbnail image from 3D video file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v8
.end method

.method private static createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v8, "ThumbnailController"

    const-string v6, "ThumbnailController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createJpsThumbnailImage("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/scalado/stream/FileStream;

    sget-object v6, Lcom/scalado/stream/FileStream$Access;->READ:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v5, p0, v6}, Lcom/scalado/stream/FileStream;-><init>(Ljava/lang/String;Lcom/scalado/stream/FileStream$Access;)V

    :try_start_0
    invoke-static {v5}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/scalado/base/Iterator;->step(I)F

    invoke-virtual {v3}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scalado/caps/codec/decoder/JpegDecoder;

    new-instance v4, Lcom/scalado/caps/Session;

    invoke-direct {v4, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    invoke-virtual {v0}, Lcom/scalado/caps/codec/decoder/JpegDecoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/scalado/base/Size;->getHeight()I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/camera/component/ThumbnailController;->cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    return-object v6

    :catch_0
    move-exception v6

    move-object v1, v6

    :try_start_1
    const-string v6, "ThumbnailController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot create thumbnail image from JPS file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Lcom/scalado/stream/FileStream;->close()V

    throw v6
.end method

.method private createThumbnailImage(Z)V
    .locals 35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createThumbnailImage(sendBackToUI = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - start"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    move-object/from16 v34, v0

    if-nez v34, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "No ThumbnailUI compoment is linked, cannot create thumbnail image"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-boolean v5, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-nez v5, :cond_7

    const-string v8, "_data LIKE ?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "DCIM"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/%"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    :goto_1
    invoke-virtual/range {v34 .. v34}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v12, "_id"

    aput-object v12, v7, v10

    const/4 v10, 0x1

    const-string v12, "_data"

    aput-object v12, v7, v10

    const/4 v10, 0x2

    const-string v12, "datetaken"

    aput-object v12, v7, v10

    const/4 v10, 0x3

    const-string v12, "mime_type"

    aput-object v12, v7, v10

    const-string v10, "datetaken DESC LIMIT 0,1"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    if-eqz v19, :cond_1

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    const-string v5, "_data"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v5, "datetaken"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    const-string v5, "mime_type"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v25

    :cond_1
    :goto_2
    if-eqz v19, :cond_2

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v5, 0x4

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

    const/4 v5, 0x3

    const-string v6, "mime_type"

    aput-object v6, v12, v5

    const-string v15, "datetaken DESC LIMIT 0,1"

    move-object v13, v8

    move-object v14, v9

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    if-eqz v20, :cond_3

    :try_start_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    if-lez v5, :cond_3

    :try_start_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    const-string v5, "_data"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    const-string v5, "datetaken"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-string v5, "mime_type"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v29

    :cond_3
    :goto_3
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_4
    const/16 v30, 0x0

    if-eqz v22, :cond_c

    if-eqz v26, :cond_b

    cmp-long v5, v23, v27

    if-lez v5, :cond_a

    move-object/from16 v31, v22

    move-wide/from16 v32, v23

    :goto_4
    if-eqz v31, :cond_5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The latest media file is \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move v3, v5

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v30

    :cond_5
    :goto_5
    if-eqz p1, :cond_6

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/component/ThumbnailController;->m_LatestThumbnailImagePathForUI:Ljava/lang/String;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    aput-object v31, v17, v5

    const/4 v5, 0x1

    aput-object v30, v17, v5

    move-object/from16 v12, p0

    move-object/from16 v13, v34

    invoke-virtual/range {v12 .. v17}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "createThumbnailImage() - end"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v8, "_data LIKE ? OR _data LIKE ?"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "DCIM"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/%"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "DCIM"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "/%"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Exception occurred while querying image file"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v22, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v5

    move-object/from16 v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Exception occurred while querying image file"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v22, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v5

    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    :catch_2
    move-exception v5

    move-object/from16 v21, v5

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Exception occurred while querying video file"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v26, 0x0

    goto/16 :goto_3

    :catch_3
    move-exception v5

    move-object/from16 v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Exception occurred while querying video file"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/16 v26, 0x0

    goto/16 :goto_3

    :catchall_1
    move-exception v5

    if-eqz v20, :cond_9

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v5

    :cond_a
    move-object/from16 v31, v26

    move-wide/from16 v32, v27

    goto/16 :goto_4

    :cond_b
    move-object/from16 v31, v22

    move-wide/from16 v32, v23

    goto/16 :goto_4

    :cond_c
    if-eqz v26, :cond_d

    move-object/from16 v31, v26

    move-wide/from16 v32, v27

    goto/16 :goto_4

    :cond_d
    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    goto/16 :goto_4

    :cond_e
    const/4 v5, 0x2

    :try_start_7
    move-object/from16 v0, v31

    move-wide/from16 v1, v32

    move v3, v5

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/component/ThumbnailController;->getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result-object v30

    goto/16 :goto_5

    :catch_4
    move-exception v5

    move-object/from16 v21, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "Exception occurred while creating thumbnail image"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v31, 0x0

    if-eqz v30, :cond_5

    throw v30

    const/16 v30, 0x0

    goto/16 :goto_5
.end method

.method private static cropSquareThumbnailImage(Lcom/scalado/caps/Session;IIZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p3, :cond_0

    mul-int/lit8 p1, p1, 0x2

    new-instance v0, Lcom/scalado/base/Image;

    new-instance p3, Lcom/scalado/base/Size;

    invoke-direct {p3, p1, p2}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v1, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {v0, p3, v1}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance p3, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {p3, v0}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-virtual {p0, p3}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/scalado/base/Iterator;->step(I)F

    new-instance p3, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {p3, v0}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    new-instance p0, Lcom/scalado/caps/Session;

    invoke-direct {p0, p3}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    :cond_0
    div-int/lit8 p1, p1, 0x2

    new-instance p3, Lcom/scalado/caps/filter/Crop;

    invoke-direct {p3, p0}, Lcom/scalado/caps/filter/Crop;-><init>(Lcom/scalado/caps/Session;)V

    if-lt p1, p2, :cond_1

    move v0, p2

    :goto_0
    new-instance v1, Lcom/scalado/base/Rect;

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    invoke-direct {v1, p1, p2, v0, v0}, Lcom/scalado/base/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Lcom/scalado/caps/filter/Crop;->set(Lcom/scalado/base/Rect;)V

    new-instance p2, Lcom/scalado/base/Image;

    new-instance p1, Lcom/scalado/base/Size;

    const/16 p3, 0xc8

    const/16 v0, 0xc8

    invoke-direct {p1, p3, v0}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object p3, Lcom/scalado/base/Image$Config;->RGB_565:Lcom/scalado/base/Image$Config;

    invoke-direct {p2, p1, p3}, Lcom/scalado/base/Image;-><init>(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    new-instance p1, Lcom/scalado/caps/codec/encoder/ImageEncoder;

    invoke-direct {p1, p2}, Lcom/scalado/caps/codec/encoder/ImageEncoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-virtual {p0, p1}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/scalado/base/Iterator;->step(I)F

    const/16 p0, 0xc8

    const/16 p1, 0xc8

    sget-object p3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2}, Lcom/scalado/base/Image;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    const-string p1, "ThumbnailController"

    const-string p2, "createJpsThumbnailImage() - end"

    invoke-static {p1, p2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private static declared-synchronized getThumbnailImageFromPool(Ljava/lang/String;JILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "ThumbnailController"

    const-class v4, Lcom/android/camera/component/ThumbnailController;

    monitor-enter v4

    if-nez p0, :cond_0

    :try_start_0
    const-string v5, "filePath"

    invoke-static {v5}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v7

    :goto_0
    monitor-exit v4

    return-object v5

    :cond_0
    :try_start_1
    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v5, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-wide v5, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->fileTime:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v5, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    if-ne p3, v5, :cond_4

    :try_start_2
    const-string v5, "image/jps"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/camera/component/ThumbnailController;->createJpsThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    :goto_1
    if-nez v2, :cond_7

    :try_start_3
    const-string v5, "ThumbnailController"

    const-string v6, "No thumbnail image created"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v5, v7

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    :try_start_4
    invoke-static {p0, v5}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v5, "video/3gpp-3d"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "video/mp4-3d"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/android/camera/component/ThumbnailController;->create3DVideoThumbnailImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_6
    const/4 v5, 0x3

    invoke-static {p0, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v0, v5

    :try_start_5
    const-string v5, "ThumbnailController"

    const-string v6, "Exception occurred while creating thumbnail image"

    invoke-static {v5, v6, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v5, v7

    goto :goto_0

    :cond_7
    :goto_2
    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_8

    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    iget-object v5, v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    :cond_8
    :try_start_6
    new-instance v3, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;

    invoke-direct {v3, p0, p1, p2, v2}, Lcom/android/camera/component/ThumbnailController$ThumbnailImageInfo;-><init>(Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    sget-object v5, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailImagePool:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    goto/16 :goto_0
.end method

.method public static final isSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private onMediaSaved()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsReview()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v3, v2, v2, v1}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ThumbnailController;->hasAsyncMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/ThumbnailController;->m_IsDeletingMedia:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ThumbnailController;->createThumbnailImage(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->isWorkerThreadRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ThumbnailController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;I)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ThumbnailController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "Media.Saved"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaSavedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "Media.DeletionCompleted"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_MediaDeletionCompletedEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "Request.DeleteLatestMedia"

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController;->m_RequestDeleteMediaEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController;->m_ThumbnailUI:Lcom/android/camera/component/ThumbnailUI;

    return-void
.end method
