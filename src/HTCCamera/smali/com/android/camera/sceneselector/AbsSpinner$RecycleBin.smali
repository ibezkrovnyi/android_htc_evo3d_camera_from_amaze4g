.class Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/sceneselector/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/sceneselector/AbsSpinner;


# direct methods
.method constructor <init>(Lcom/android/camera/sceneselector/AbsSpinner;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->this$0:Lcom/android/camera/sceneselector/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->this$0:Lcom/android/camera/sceneselector/AbsSpinner;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lcom/android/camera/sceneselector/AbsSpinner;->access$100(Lcom/android/camera/sceneselector/AbsSpinner;Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public clear(II)V
    .locals 7

    iget-object v3, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x5

    if-gt v0, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    sub-int v5, p1, p2

    if-le v2, v5, :cond_2

    add-int v5, p1, p2

    if-lt v2, v5, :cond_3

    :cond_2
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->this$0:Lcom/android/camera/sceneselector/AbsSpinner;

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Lcom/android/camera/sceneselector/AbsSpinner;->access$200(Lcom/android/camera/sceneselector/AbsSpinner;Landroid/view/View;Z)V

    iget-object v5, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method get(I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-object v0
.end method

.method peek(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/sceneselector/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
