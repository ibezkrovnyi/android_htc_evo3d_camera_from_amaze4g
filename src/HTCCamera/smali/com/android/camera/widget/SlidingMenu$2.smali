.class Lcom/android/camera/widget/SlidingMenu$2;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/SlidingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/SlidingMenu$2;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu$2;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {v0}, Lcom/android/camera/widget/SlidingMenu;->close()V

    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu$2;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-static {v0}, Lcom/android/camera/widget/SlidingMenu;->access$200(Lcom/android/camera/widget/SlidingMenu;)Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/SlidingMenu$2;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-static {v0}, Lcom/android/camera/widget/SlidingMenu;->access$200(Lcom/android/camera/widget/SlidingMenu;)Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/SlidingMenu$2;->this$0:Lcom/android/camera/widget/SlidingMenu;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/widget/SlidingMenuItem;

    invoke-interface {v0, v1, p0}, Lcom/android/camera/widget/SlidingMenu$OnItemClickListener;->onItemClick(Lcom/android/camera/widget/SlidingMenu;Lcom/android/camera/widget/SlidingMenuItem;)V

    :cond_0
    return-void
.end method
