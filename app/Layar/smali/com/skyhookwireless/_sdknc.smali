.class public abstract Lcom/skyhookwireless/_sdknc;
.super Lcom/skyhookwireless/_sdkfc;


# static fields
.field private static _sdkc:Lcom/skyhookwireless/_sdknc;

.field public static _sdkd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/skyhookwireless/_sdknc;->_sdkc:Lcom/skyhookwireless/_sdknc;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkfc;-><init>()V

    return-void
.end method

.method public static _sdkb(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdknc;
    .locals 1

    sget-object v0, Lcom/skyhookwireless/_sdknc;->_sdkc:Lcom/skyhookwireless/_sdknc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/skyhookwireless/_sdkoc;

    invoke-direct {v0, p0}, Lcom/skyhookwireless/_sdkoc;-><init>(Lcom/skyhookwireless/_sdko;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/skyhookwireless/_sdknc;->_sdkc:Lcom/skyhookwireless/_sdknc;

    invoke-virtual {v0, p0}, Lcom/skyhookwireless/_sdknc;->_sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdknc;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract _sdka(Lcom/skyhookwireless/_sdko;)Lcom/skyhookwireless/_sdknc;
.end method

.method public abstract _sdkb()V
.end method

.method public abstract _sdkc()V
.end method

.method public abstract _sdkd()Lcom/skyhookwireless/_sdkh;
.end method
