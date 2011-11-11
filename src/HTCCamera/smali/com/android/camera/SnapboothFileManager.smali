.class public Lcom/android/camera/SnapboothFileManager;
.super Ljava/lang/Object;
.source "SnapboothFileManager.java"


# static fields
.field public static final SNAPBOOTH_OUTER_DIR:Ljava/lang/String; = "DCIM"

.field public static final STORAGE_STATE_CHECKING:I = 0x1

.field public static final STORAGE_STATE_NOT_AVAILABLE:I = 0x3

.field public static final STORAGE_STATE_NO_SPACE:I = 0x4

.field public static final STORAGE_STATE_OK:I = 0x2

.field public static final STORAGE_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnapboothFileManager"

.field private static volatile mCurrentDirIndex:I

.field private static volatile mCurrentFileIndex:I

.field private static final mDCFInfo:Lcom/android/camera/DCFInfo;

.field private static mLastContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, -0x1

    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sput v0, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "BOOTH"

    const-string v2, "IMAG"

    const-string v3, "snapbooth_current_dir_index"

    const-string v4, "snapbooth_current_image_index"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    sget-object v0, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->registerDCFInfo(Lcom/android/camera/DCFInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStorageState(Landroid/app/Activity;)I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    new-instance v0, Ljava/io/File;

    const-string v5, "%s/%s"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "DCIM"

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v9

    :goto_0
    return v5

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v5, "%d%s"

    new-array v6, v11, [Ljava/lang/Object;

    sget v7, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v7}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v10

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, v1

    move v5, v9

    goto :goto_0

    :cond_1
    move v2, v8

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/io/File;

    const-string v5, ".css_dummy_file"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v0, v1

    move v5, v9

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_4
    move-object v0, v1

    move v5, v9

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    throw v5

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v0, v1

    move v5, v11

    goto :goto_0
.end method

.method public static declared-synchronized clearDirectoryAndFileIndex()V
    .locals 2

    const-class v0, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v0

    const/4 v1, -0x1

    :try_start_0
    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v1, -0x1

    sput v1, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized deleteCurrentImageFile(Landroid/app/Activity;)Z
    .locals 5

    const-class v0, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->clearDirectoryAndFileIndex()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getCurrentDirectoryIndex(Landroid/app/Activity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    sget v0, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    return v0
.end method

.method public static getCurrentImageFileIndex(Landroid/app/Activity;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    sget v0, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    return v0
.end method

.method public static getLastContentUri(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getLastThumbnailImage(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DCIM"

    sget-object v4, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    sget v5, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sget v6, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/camera/DCFRuler;->fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v7

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v7

    goto :goto_0
.end method

.method public static declared-synchronized getNextImageFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$PathPackage;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v1, "SnapboothFileManager"

    const-string v1, "DCIM"

    const-string v1, "/"

    const-class v1, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "/sdcard"

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V

    const/4 v0, 0x3

    :goto_0
    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    const/16 v3, 0x270f

    if-le v2, v3, :cond_1

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/16 v3, 0x3e7

    if-ge v2, v3, :cond_2

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v2, 0x1

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string v3, "DCIM"

    sget-object v4, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    sget v5, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sget v6, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/camera/DCFRuler;->fillImageFilePath(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/DCFInfo;II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    iput v2, p2, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    iput v2, p2, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    sget v4, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    invoke-static {v3, v4}, Lcom/android/camera/DCFRuler;->fillImageFileName(Lcom/android/camera/DCFInfo;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/DCFRuler;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v3}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v7

    :goto_2
    monitor-exit v1

    return v2

    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/camera/DCFRuler;->backupDcimDirectory(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SnapboothFileManager"

    const-string v3, "Cannot backup \'DCIM\' directory"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v8

    goto :goto_2

    :cond_3
    const/16 v2, 0x64

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v2, 0x1

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_4
    if-gtz v0, :cond_5

    :try_start_2
    const-string v2, "SnapboothFileManager"

    const-string v3, "Cannot find available location for image saving"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v8

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/SnapboothFileManager;->initDirectoryAndFileIndex(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method

.method public static getRootStorageDirectory()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initDirectoryAndFileIndex(Z)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x64

    const-string v1, "/"

    const-class v1, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v1

    if-nez p0, :cond_1

    :try_start_0
    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    if-lt v2, v4, :cond_1

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/16 v3, 0x3e7

    if-gt v2, v3, :cond_1

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    if-lt v2, v5, :cond_1

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x270f

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/SnapboothFileManager;->getRootStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DCIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v2}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/DCFRuler;->getLastDirectoryNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    if-lt v2, v4, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v3}, Lcom/android/camera/DCFInfo;->getDirFreeChar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-virtual {v3}, Lcom/android/camera/DCFInfo;->getFileTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/DCFRuler;->getLastImageFileNumber(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    sget v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I

    if-ge v2, v5, :cond_0

    const/4 v2, 0x0

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_2
    const/16 v2, 0x64

    :try_start_2
    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentDirIndex:I

    const/4 v2, 0x0

    sput v2, Lcom/android/camera/SnapboothFileManager;->mCurrentFileIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized storeImage(Landroid/app/Activity;Ljava/lang/Object;)Z
    .locals 14

    const-class v13, Lcom/android/camera/SnapboothFileManager;

    monitor-enter v13

    :try_start_0
    const-string v1, "SnapboothFileManager"

    const-string v2, "Store Jpeg Image..."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "SnapboothFileManager"

    const-string p1, "image = NULL in storeImage()"

    invoke-static {p0, p1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :goto_0
    monitor-exit v13

    return p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Lcom/android/camera/DCFRuler$PathPackage;

    invoke-direct {v12}, Lcom/android/camera/DCFRuler$PathPackage;-><init>()V

    invoke-static {p0, v1, v12}, Lcom/android/camera/SnapboothFileManager;->getNextImageFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$PathPackage;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "SnapboothFileManager"

    const-string p1, "Cannot save image due to no available file name"

    invoke-static {p0, p1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v2, v12, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, v12, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v11, v12, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    instance-of v2, p1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v12, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    const-string p1, "SnapboothFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save image to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/ImageManager;->addNecessaryExifToFile(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int p1, v3

    new-array p1, p1, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move-object p1, p1

    :cond_2
    const-string v1, "SnapboothFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store image - directory name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    const-string v1, "SnapboothFileManager"

    const-string v2, "Store image: mLastContentUri = null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    :goto_1
    instance-of v1, p1, [B

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    check-cast p1, [B

    move-object v0, p1

    check-cast v0, [B

    move-object v8, v0

    move-object v4, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string p1, "snapbooth_current_image_index"

    new-instance v1, Ljava/lang/Integer;

    iget v2, v12, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    const-string p1, "snapbooth_current_dir_index"

    new-instance v1, Ljava/lang/Integer;

    iget v2, v12, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_3
    const-string v1, "SnapboothFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Store image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_4
    const-string p1, "SnapboothFileManager"

    const-string v1, "Exception while compressing image."

    invoke-static {p1, v1, p0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_5
    instance-of v1, p1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/SnapboothFileManager;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v7, v0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object p1

    goto :goto_2

    :cond_5
    const-string p0, "SnapboothFileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown image type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 p0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v13

    throw p0
.end method
