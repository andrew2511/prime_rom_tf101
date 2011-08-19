.class public Landroid/test/ComparisonFailure;
.super Landroid/test/AssertionFailedError;
.source "ComparisonFailure.java"


# instance fields
.field private mComparison:Ljunit/framework/ComparisonFailure;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "message"
    .parameter "expected"
    .parameter "actual"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/test/AssertionFailedError;-><init>()V

    .line 29
    new-instance v0, Ljunit/framework/ComparisonFailure;

    invoke-direct {v0, p1, p2, p3}, Ljunit/framework/ComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/test/ComparisonFailure;->mComparison:Ljunit/framework/ComparisonFailure;

    .line 30
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/test/ComparisonFailure;->mComparison:Ljunit/framework/ComparisonFailure;

    invoke-virtual {v0}, Ljunit/framework/ComparisonFailure;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
