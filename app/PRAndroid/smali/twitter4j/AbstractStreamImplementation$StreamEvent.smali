.class abstract Ltwitter4j/AbstractStreamImplementation$StreamEvent;
.super Ljava/lang/Object;
.source "AbstractStreamImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/AbstractStreamImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "StreamEvent"
.end annotation


# instance fields
.field line:Ljava/lang/String;

.field private final this$0:Ltwitter4j/AbstractStreamImplementation;


# direct methods
.method constructor <init>(Ltwitter4j/AbstractStreamImplementation;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "line"

    .prologue
    .line 80
    iput-object p1, p0, Ltwitter4j/AbstractStreamImplementation$StreamEvent;->this$0:Ltwitter4j/AbstractStreamImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Ltwitter4j/AbstractStreamImplementation$StreamEvent;->line:Ljava/lang/String;

    .line 82
    return-void
.end method
