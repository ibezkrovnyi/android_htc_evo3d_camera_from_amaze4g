.class Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;
.super Landroid/os/Handler;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/sceneselector/AdapterView;


# direct methods
.method private constructor <init>(Lcom/android/camera/sceneselector/AdapterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;->this$0:Lcom/android/camera/sceneselector/AdapterView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/sceneselector/AdapterView;Lcom/android/camera/sceneselector/AdapterView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;-><init>(Lcom/android/camera/sceneselector/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;->this$0:Lcom/android/camera/sceneselector/AdapterView;

    iget-boolean v0, v0, Lcom/android/camera/sceneselector/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/sceneselector/AdapterView$SelectionNotifier;->this$0:Lcom/android/camera/sceneselector/AdapterView;

    invoke-virtual {v0}, Lcom/android/camera/sceneselector/AdapterView;->fireOnSelected()V

    goto :goto_0
.end method
