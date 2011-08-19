.class synthetic Lcom/asus/cm/handler/BrowserPageHandler$3;
.super Ljava/lang/Object;
.source "BrowserPageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/handler/BrowserPageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->values()[Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/asus/cm/handler/BrowserPageHandler$3;->$SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I

    :try_start_0
    sget-object v0, Lcom/asus/cm/handler/BrowserPageHandler$3;->$SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I

    sget-object v1, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->BOOKMARK:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v1}, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/asus/cm/handler/BrowserPageHandler$3;->$SwitchMap$com$asus$cm$handler$BrowserPageHandler$HandleType:[I

    sget-object v1, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->HOMEPAGE:Lcom/asus/cm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v1}, Lcom/asus/cm/handler/BrowserPageHandler$HandleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
