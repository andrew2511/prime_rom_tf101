.class public Lcom/skyhookwireless/_sdkgb;
.super Lcom/skyhookwireless/_sdkcb;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/skyhookwireless/_sdkcb;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected _sdka(Ljava/lang/Class;)Lcom/skyhookwireless/_sdkcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/skyhookwireless/_sdkcb;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkgb;

    invoke-direct {v0, p1}, Lcom/skyhookwireless/_sdkgb;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method protected _sdka(Lcom/skyhookwireless/_sdkg;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
