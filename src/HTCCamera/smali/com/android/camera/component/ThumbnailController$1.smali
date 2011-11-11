.class Lcom/android/camera/component/ThumbnailController$1;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/camera/MediaDeletionCompletedEvent;->isLastMedia()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-static {v2, v4}, Lcom/android/camera/component/ThumbnailController;->access$002(Lcom/android/camera/component/ThumbnailController;Z)Z

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailController$1;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v5, v4, v4, v3}, Lcom/android/camera/component/ThumbnailController;->sendAsyncMessage(IIILjava/lang/Object;)Z

    :cond_0
    return-void
.end method
