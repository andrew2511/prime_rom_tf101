.class public final Lcom/skyhookwireless/_sdkcd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _sdka:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final _sdkb:Lcom/skyhookwireless/_sdkgd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private _sdkc:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private _sdkd:Z

.field final _sdke:Lcom/skyhookwireless/_sdkbd;


# direct methods
.method public constructor <init>(Lcom/skyhookwireless/_sdkbd;Ljava/util/Iterator;Lcom/skyhookwireless/_sdkgd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TT;>;",
            "Lcom/skyhookwireless/_sdkgd",
            "<-TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/skyhookwireless/_sdkcd;->_sdke:Lcom/skyhookwireless/_sdkbd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/skyhookwireless/_sdkcd;->_sdka:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/skyhookwireless/_sdkcd;->_sdkb:Lcom/skyhookwireless/_sdkgd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/skyhookwireless/_sdkcd;->_sdkd:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    sget-boolean v0, Lcom/skyhookwireless/_sdkfc;->_sdkb:Z

    :cond_0
    iget-boolean v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkd:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdka:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdka:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkc:Ljava/lang/Object;

    iget-object v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkb:Lcom/skyhookwireless/_sdkgd;

    iget-object v2, p0, Lcom/skyhookwireless/_sdkcd;->_sdkc:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/skyhookwireless/_sdkgd;->eval(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkd:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/skyhookwireless/_sdkcd;->_sdkd:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/skyhookwireless/_sdkcd;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/skyhookwireless/_sdkcd;->_sdkc:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkc:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/skyhookwireless/_sdkcd;->_sdkd:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
