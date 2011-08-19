.class public final enum Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;
.super Ljava/lang/Enum;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/fragments/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailsPageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

.field public static final enum ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

.field public static final enum ALL_REVIEWS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;


# instance fields
.field private mLayoutId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    const-string v1, "ALL_DETAILS"

    const v2, 0x7f090053

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    new-instance v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    const-string v1, "ALL_REVIEWS"

    const v2, 0x7f090052

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_REVIEWS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    sget-object v1, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_DETAILS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->ALL_REVIEWS:Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->$VALUES:[Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter
    .parameter "layoutId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->mLayoutId:Ljava/lang/Integer;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->onEnterState(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->onExitState(Landroid/view/View;)V

    return-void
.end method

.method private getView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "parent"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->mLayoutId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private onEnterState(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 87
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_0
    return-void
.end method

.method private onExitState(Landroid/view/View;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->getView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 95
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;
    .locals 1
    .parameter

    .prologue
    .line 67
    const-class v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->$VALUES:[Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/fragments/DetailsFragment$DetailsPageState;

    return-object v0
.end method
