.class Lcom/android/camera/component/PanoramaController$6$1$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/CameraThread$StorePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/component/PanoramaController$6$1;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$6$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError([BLjava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3, p2}, Lcom/android/camera/component/PanoramaController;->access$602(Lcom/android/camera/component/PanoramaController;Landroid/net/Uri;)Landroid/net/Uri;

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$6$1$1;->this$2:Lcom/android/camera/component/PanoramaController$6$1;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6$1;->this$1:Lcom/android/camera/component/PanoramaController$6;

    iget-object v3, v3, Lcom/android/camera/component/PanoramaController$6;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaController;->access$2000(Lcom/android/camera/component/PanoramaController;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
