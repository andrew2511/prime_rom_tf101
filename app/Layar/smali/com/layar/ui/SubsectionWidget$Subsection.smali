.class public Lcom/layar/ui/SubsectionWidget$Subsection;
.super Ljava/lang/Object;
.source "SubsectionWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/SubsectionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subsection"
.end annotation


# instance fields
.field private mCurrentSubsection:I

.field private mSubsectionArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCurrentSubsection()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    return v0
.end method

.method public getSubsectionArray()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentSubsection(I)V
    .locals 3
    .parameter "currentSubsection"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    if-nez v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 47
    iput p1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setSubsectionArray([I)V
    .locals 2
    .parameter "array"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    .line 64
    iget v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 65
    iget-object v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mSubsectionArray:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/layar/ui/SubsectionWidget$Subsection;->setCurrentSubsection(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget v0, p0, Lcom/layar/ui/SubsectionWidget$Subsection;->mCurrentSubsection:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/SubsectionWidget$Subsection;->setCurrentSubsection(I)V

    goto :goto_0
.end method
