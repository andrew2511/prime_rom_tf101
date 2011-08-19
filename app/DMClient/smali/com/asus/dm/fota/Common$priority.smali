.class public final enum Lcom/asus/dm/fota/Common$priority;
.super Ljava/lang/Enum;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/fota/Common;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/fota/Common$priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/fota/Common$priority;

.field public static final enum Critical:Lcom/asus/dm/fota/Common$priority;

.field public static final enum Normal:Lcom/asus/dm/fota/Common$priority;

.field public static final enum Priority:Lcom/asus/dm/fota/Common$priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/asus/dm/fota/Common$priority;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/fota/Common$priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/fota/Common$priority;->Normal:Lcom/asus/dm/fota/Common$priority;

    new-instance v0, Lcom/asus/dm/fota/Common$priority;

    const-string v1, "Priority"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/fota/Common$priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/fota/Common$priority;->Priority:Lcom/asus/dm/fota/Common$priority;

    new-instance v0, Lcom/asus/dm/fota/Common$priority;

    const-string v1, "Critical"

    invoke-direct {v0, v1, v4}, Lcom/asus/dm/fota/Common$priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/fota/Common$priority;->Critical:Lcom/asus/dm/fota/Common$priority;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dm/fota/Common$priority;

    sget-object v1, Lcom/asus/dm/fota/Common$priority;->Normal:Lcom/asus/dm/fota/Common$priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dm/fota/Common$priority;->Priority:Lcom/asus/dm/fota/Common$priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dm/fota/Common$priority;->Critical:Lcom/asus/dm/fota/Common$priority;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dm/fota/Common$priority;->$VALUES:[Lcom/asus/dm/fota/Common$priority;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/fota/Common$priority;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/asus/dm/fota/Common$priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/fota/Common$priority;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/fota/Common$priority;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/asus/dm/fota/Common$priority;->$VALUES:[Lcom/asus/dm/fota/Common$priority;

    invoke-virtual {v0}, [Lcom/asus/dm/fota/Common$priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/fota/Common$priority;

    return-object v0
.end method
