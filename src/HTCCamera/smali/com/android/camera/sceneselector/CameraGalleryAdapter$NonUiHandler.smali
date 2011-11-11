.class final Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;
.super Landroid/os/Handler;
.source "CameraGalleryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/CameraGalleryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NonUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/sceneselector/CameraGalleryAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$000(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[I

    move-result-object v5

    iget v2, p1, Landroid/os/Message;->arg1:I

    aget v4, v5, v2

    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$100(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$200(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$300(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$400(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;

    move-result-object v6

    aget-object v6, v6, v2

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$100(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$400(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v0, v6, v2

    :cond_0
    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$500(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;

    move-result-object v6

    aget-object v6, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$500(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    iget-object v8, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v8}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$400(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)[Landroid/graphics/Bitmap;

    move-result-object v8

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v9}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$600(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)I

    move-result v9

    invoke-static {v7, v8, v9}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$700(Lcom/android/camera/sceneselector/CameraGalleryAdapter;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v6}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$200(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v1, v6

    :try_start_2
    invoke-static {}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "case PRELOAD_SCENE_IMAGE: RunTimeException: ex: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/camera/sceneselector/CameraGalleryAdapter$NonUiHandler;->this$0:Lcom/android/camera/sceneselector/CameraGalleryAdapter;

    invoke-static {v7}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$200(Lcom/android/camera/sceneselector/CameraGalleryAdapter;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6

    :cond_2
    invoke-static {}, Lcom/android/camera/sceneselector/CameraGalleryAdapter;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PRELOAD_SCENE_IMAGE, mRes is null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
