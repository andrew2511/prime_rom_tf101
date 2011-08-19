.class public final enum Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
.super Ljava/lang/Enum;
.source "NIAMsgHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/NIAMsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

.field public static final enum BACKGROUND:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

.field public static final enum INFORMATIVE:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

.field public static final enum NOT_SPECIFIED:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

.field public static final enum UI:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    const-string v1, "NOT_SPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    new-instance v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->BACKGROUND:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    new-instance v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    const-string v1, "INFORMATIVE"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    new-instance v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    const-string v1, "UI"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->UI:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    sget-object v1, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->BACKGROUND:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->INFORMATIVE:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->UI:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->$VALUES:[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    .locals 5
    .parameter "m"

    .prologue
    .line 32
    invoke-static {}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->values()[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 33
    .local v3, mode:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    iget v4, v3, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->val:I

    if-ne v4, p0, :cond_0

    move-object v4, v3

    .line 36
    .end local v3           #mode:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    :goto_1
    return-object v4

    .line 32
    .restart local v3       #mode:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v3           #mode:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    :cond_1
    sget-object v4, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->NOT_SPECIFIED:Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->$VALUES:[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->val:I

    return v0
.end method
