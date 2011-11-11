.class Lcom/android/camera/component/ThumbnailUI$9;
.super Ljava/lang/Object;
.source "ThumbnailUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v0, v2, v2}, Lcom/android/camera/component/ThumbnailUI;->access$700(Lcom/android/camera/component/ThumbnailUI;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/component/ThumbnailUI;->access$202(Lcom/android/camera/component/ThumbnailUI;Z)Z

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$9;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-static {v0, v2}, Lcom/android/camera/component/ThumbnailUI;->access$302(Lcom/android/camera/component/ThumbnailUI;Z)Z

    return-void
.end method
