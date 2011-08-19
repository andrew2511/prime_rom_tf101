.class public Lag/d;
.super Lag/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lag/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
