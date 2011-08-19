.class public final enum Lcom/asus/dm/handler/BrowserPageHandler$HandleType;
.super Ljava/lang/Enum;
.source "BrowserPageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/handler/BrowserPageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/handler/BrowserPageHandler$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

.field public static final enum BOOKMARK:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

.field public static final enum HOMEPAGE:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    const-string v1, "HOMEPAGE"

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->HOMEPAGE:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    new-instance v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    const-string v1, "BOOKMARK"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->BOOKMARK:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    sget-object v1, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->HOMEPAGE:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->BOOKMARK:Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/handler/BrowserPageHandler$HandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    const-class v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/handler/BrowserPageHandler$HandleType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    invoke-virtual {v0}, [Lcom/asus/dm/handler/BrowserPageHandler$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/handler/BrowserPageHandler$HandleType;

    return-object v0
.end method
