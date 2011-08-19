.class public Landroid/test/TestRunner$IntermediateTime;
.super Ljava/lang/Object;
.source "TestRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntermediateTime"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public timeInNS:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .parameter "name"
    .parameter "timeInNS"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/test/TestRunner$IntermediateTime;->name:Ljava/lang/String;

    .line 140
    iput-wide p2, p0, Landroid/test/TestRunner$IntermediateTime;->timeInNS:J

    .line 141
    return-void
.end method
