.class final Ljunit/framework/TestSuite$1;
.super Ljunit/framework/TestCase;
.source "TestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter

    .prologue
    .line 261
    iput-object p2, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljunit/framework/TestCase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected runTest()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Ljunit/framework/TestSuite$1;->val$message:Ljava/lang/String;

    invoke-static {v0}, Ljunit/framework/TestSuite$1;->fail(Ljava/lang/String;)V

    .line 264
    return-void
.end method
