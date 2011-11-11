.class Lcom/android/camera/component/PanoramaUI$14;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Lcom/android/camera/ThumbnailButtonClickedEvent;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailButtonClickedEvent;->getMediaFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ".+/[0-9]{3}PANOR/[^/]+$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-static {v3}, Lcom/android/camera/component/PanoramaUI;->access$2300(Lcom/android/camera/component/PanoramaUI;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Start album by PanoramaUI"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-virtual {v3}, Lcom/android/camera/component/PanoramaUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "image/jpeg"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/HTCCamera;->startAlbum(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/camera/ThumbnailButtonClickedEvent;->setHandled()V

    :cond_0
    return-void
.end method
