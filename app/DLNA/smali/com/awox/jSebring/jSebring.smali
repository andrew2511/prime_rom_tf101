.class public Lcom/awox/jSebring/jSebring;
.super Ljava/lang/Object;
.source "jSebring.java"

# interfaces
.implements Lcom/awox/jSebring/jSebringConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awDMS_main()I
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/awox/jSebring/jSebringJNI;->awDMS_main()I

    move-result v0

    return v0
.end method

.method public static awLocale_SetNative(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/awox/jSebring/jSebringJNI;->awLocale_SetNative(Ljava/lang/String;)V

    .line 18
    return-void
.end method
