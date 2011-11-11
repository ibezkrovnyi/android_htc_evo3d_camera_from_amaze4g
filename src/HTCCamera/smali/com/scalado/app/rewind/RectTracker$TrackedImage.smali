.class Lcom/scalado/app/rewind/RectTracker$TrackedImage;
.super Ljava/lang/Object;
.source "RectTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackedImage"
.end annotation


# instance fields
.field private mImage:Lcom/scalado/base/Image;

.field private mIndex:I

.field private mRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/app/rewind/RectTracker$TrackedRect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/scalado/app/rewind/RectTracker;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;I)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/app/rewind/RectTracker$TrackedImage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;-><init>(Lcom/scalado/app/rewind/RectTracker;I)V

    return-void
.end method

.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker;ILcom/scalado/base/Image;)V
    .locals 1

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->this$0:Lcom/scalado/app/rewind/RectTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I

    iput-object p3, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)I
    .locals 1

    iget v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/base/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mImage:Lcom/scalado/base/Image;

    return-void
.end method

.method static synthetic access$3(Lcom/scalado/app/rewind/RectTracker$TrackedImage;Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method

.method static synthetic access$4(Lcom/scalado/app/rewind/RectTracker$TrackedImage;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    return-object v0
.end method

.method private add(Lcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/app/rewind/RectTracker$TrackedImage;->mRects:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method
