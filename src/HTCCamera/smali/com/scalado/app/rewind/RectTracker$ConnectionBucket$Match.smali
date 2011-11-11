.class Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;
.super Ljava/lang/Object;
.source "RectTracker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Match"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field mId:I

.field mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

.field mScore:F

.field final synthetic this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;


# direct methods
.method private constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->this$1:Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mId:I

    iput p3, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iput-object p4, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mRect:Lcom/scalado/app/rewind/RectTracker$TrackedRect;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;-><init>(Lcom/scalado/app/rewind/RectTracker$ConnectionBucket;IFLcom/scalado/app/rewind/RectTracker$TrackedRect;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;

    move-object v1, v0

    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v3, v1, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    iget v3, v1, Lcom/scalado/app/rewind/RectTracker$ConnectionBucket$Match;->mScore:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
