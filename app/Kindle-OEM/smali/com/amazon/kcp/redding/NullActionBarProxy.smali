.class Lcom/amazon/kcp/redding/NullActionBarProxy;
.super Ljava/lang/Object;
.source "ReddingActivity.java"

# interfaces
.implements Lcom/amazon/kcp/redding/IActionBarProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 243
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 0
    .parameter "options"
    .parameter "mask"

    .prologue
    .line 217
    return-void
.end method

.method public setOnActionBarVisibilityChangedListener(Lcom/amazon/kcp/redding/ReddingActivity$OnActionBarVisibilityChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 225
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 211
    return-void
.end method
