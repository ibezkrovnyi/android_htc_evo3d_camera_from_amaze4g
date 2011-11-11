.class Lcom/android/camera/HTCCamera$10;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->doOnCreate_after_preview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$10;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/camera/widget/SlidingMenu;Lcom/android/camera/widget/SlidingMenuItem;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/camera/widget/SlidingMenuItem;->getID()I

    move-result v0

    if-eq v0, v4, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_3

    :cond_1
    move v1, v5

    :goto_1
    iget-object v3, p0, Lcom/android/camera/HTCCamera$10;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v2, v1}, Lcom/android/camera/HTCCamera;->switchMode(ZI)Z

    return-void

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1
.end method
