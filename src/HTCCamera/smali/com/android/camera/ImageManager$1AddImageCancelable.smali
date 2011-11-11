.class Lcom/android/camera/ImageManager$1AddImageCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field delegate:Ljava/io/OutputStream;

.field mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

.field private mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/android/camera/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$source:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Landroid/content/ContentResolver;Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    iput-object p2, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput-object p6, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    iput p7, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    invoke-direct {p0, p1}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .locals 3

    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling AddImageCancelable.cancel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v7, v0

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v7, v0

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "source cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v7, v0

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x1

    move/from16 v22, v7

    :cond_1
    :goto_0
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v7, v0

    if-eqz v7, :cond_8

    const-string v7, "_size"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v8, v0

    array-length v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v23

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    const/16 v21, 0x0

    const/16 v16, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_0 .. :try_end_0} :catch_10

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ImageManager$BaseCancelable;->mCancel:Z

    move v7, v0

    if-eqz v7, :cond_9

    new-instance v7, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v7

    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_2} :catch_10

    :catch_0
    move-exception v7

    move-object/from16 v17, v7

    move-object/from16 v11, v16

    move-object/from16 v5, v21

    :goto_2
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v5, 0x0

    :cond_3
    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    if-eqz v7, :cond_5

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    if-eqz v7, :cond_6

    :try_start_5
    const-string v7, "ImageManager"

    const-string v8, "close output stream...."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v7, 0x0

    move/from16 v22, v7

    goto/16 :goto_0

    :cond_8
    const-string v7, "_size"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    move-object v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_9
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v22, :cond_e

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v7, v0

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    move-wide/from16 v19, v7

    :goto_5
    new-instance v5, Lcom/android/camera/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v8, v0

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1200()Landroid/net/Uri;

    move-result-object v9

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1300()Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_7 .. :try_end_7} :catch_10

    :try_start_8
    new-instance v6, Lcom/android/camera/ImageManager$Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v7, v0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v12, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ImageList;->getCount()I

    move-result v14

    const/4 v15, 0x0

    move-wide/from16 v8, v19

    move-object v13, v5

    invoke-direct/range {v6 .. v15}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_8 .. :try_end_8} :catch_11

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    new-instance v7, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v7, v0

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v7, v0

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v10, v0

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_a .. :try_end_a} :catch_11

    move-object/from16 v11, v16

    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v5, 0x0

    :cond_b
    if-eqz v11, :cond_c

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    if-eqz v7, :cond_d

    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_e

    :cond_d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    if-eqz v7, :cond_6

    :try_start_c
    const-string v7, "ImageManager"

    const-string v8, "close output stream...."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    goto/16 :goto_4

    :catch_1
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_8
    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    const-wide/16 v7, -0x1

    move-wide/from16 v19, v7

    goto/16 :goto_5

    :catchall_1
    move-exception v7

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw v7

    :catch_2
    move-exception v7

    move-object/from16 v17, v7

    move-object/from16 v11, v16

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->write([B)V

    move-object/from16 v11, v16

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v8, v0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "_id"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "mini_thumb_magic"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_e .. :try_end_e} :catch_11

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v7, 0x0

    :try_start_f
    invoke-interface {v11, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v7, "ImageManager"

    const-string v8, "set saveImageContents ..."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_f .. :try_end_f} :catch_4

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    const-string v7, "ImageManager"

    const-string v8, "return saveImageContents ..."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    move v9, v0

    const/4 v10, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/camera/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    const-string v7, "ImageManager"

    const-string v8, "get saveImageContents ..."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-object v7, v0

    invoke-interface {v7}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v7

    if-eqz v7, :cond_15

    const-string v7, "ImageManager"

    const-string v8, "get saveImageContents ... true"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updating new picture with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v0, v11

    move v1, v7

    move-wide/from16 v2, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/database/Cursor;->updateLong(IJ)Z

    invoke-interface {v11}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_11 .. :try_end_11} :catch_4

    goto/16 :goto_6

    :catch_3
    move-exception v7

    move-object/from16 v17, v7

    goto/16 :goto_2

    :catchall_2
    move-exception v7

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_13 .. :try_end_13} :catch_4

    :catch_4
    move-exception v7

    move-object/from16 v18, v7

    :goto_9
    :try_start_14
    const-string v7, "ImageManager"

    const-string v8, "caught CanceledException"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v7, v0

    if-eqz v7, :cond_11

    if-eqz v22, :cond_11

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canceled... cleaning up this uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->acknowledgeCancel()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v5, 0x0

    :cond_12
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    if-eqz v7, :cond_14

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_c

    :cond_14
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    if-eqz v7, :cond_6

    :try_start_16
    const-string v7, "ImageManager"

    const-string v8, "close output stream...."

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    goto/16 :goto_4

    :catch_5
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    :cond_15
    :try_start_17
    new-instance v7, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_17 .. :try_end_17} :catch_4

    :catchall_3
    move-exception v7

    :goto_b
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    const/4 v5, 0x0

    :cond_16
    if-eqz v11, :cond_17

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v8, v0

    if-eqz v8, :cond_18

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->delegate:Ljava/io/OutputStream;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6

    :cond_18
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v8, v0

    if-eqz v8, :cond_19

    :try_start_19
    const-string v8, "ImageManager"

    const-string v9, "close output stream...."

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_7
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :cond_19
    :goto_d
    throw v7

    :catch_6
    move-exception v8

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catch_7
    move-exception v8

    move-object/from16 v18, v8

    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close output stream with IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_8
    move-exception v8

    move-object/from16 v18, v8

    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "close output stream with exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_9
    move-exception v7

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_a
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    :catch_b
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_e
    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_c
    move-exception v7

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :catch_d
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :catch_e
    move-exception v7

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_f
    move-exception v7

    move-object/from16 v18, v7

    const-string v7, "ImageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "close output stream with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :catchall_4
    move-exception v7

    move-object/from16 v11, v16

    move-object/from16 v5, v21

    goto/16 :goto_b

    :catchall_5
    move-exception v7

    move-object/from16 v11, v16

    goto/16 :goto_b

    :catch_10
    move-exception v7

    move-object/from16 v18, v7

    move-object/from16 v11, v16

    move-object/from16 v5, v21

    goto/16 :goto_9

    :catch_11
    move-exception v7

    move-object/from16 v18, v7

    move-object/from16 v11, v16

    goto/16 :goto_9
.end method
