.class public Lcom/asus/vibe/api/Interrupter;
.super Ljava/lang/Object;
.source "Interrupter.java"


# instance fields
.field private interrupted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/asus/vibe/api/Interrupter;->set(Z)V

    .line 9
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/asus/vibe/api/Interrupter;->interrupted:Z

    return v0
.end method

.method public set(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/asus/vibe/api/Interrupter;->interrupted:Z

    .line 17
    return-void
.end method
