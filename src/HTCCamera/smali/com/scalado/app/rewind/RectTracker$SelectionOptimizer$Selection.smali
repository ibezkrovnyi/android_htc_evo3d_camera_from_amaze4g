.class Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Selection"
.end annotation


# instance fields
.field private mBg:I

.field private mCost:F

.field private mCosts:[F

.field private mSelecteddImages:[I

.field private mUnreliable:Z

.field final synthetic this$1:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;I)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->this$1:Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7f80

    iput v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    invoke-static {p1}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;->access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;)Lcom/scalado/app/rewind/RectTracker;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/app/rewind/RectTracker;->access$3(Lcom/scalado/app/rewind/RectTracker;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;ILcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;-><init>(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer;I)V

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[I
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mSelecteddImages:[I

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)[F
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCosts:[F

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mUnreliable:Z

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;F)V
    .locals 0

    iput p1, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)F
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mCost:F

    return v0
.end method

.method static synthetic access$6(Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$SelectionOptimizer$Selection;->mBg:I

    return v0
.end method
