.class public final enum Lcom/asus/dmlib/vdm/lawmo/LawmoState;
.super Ljava/lang/Enum;
.source "LawmoState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/lawmo/LawmoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoState;

.field public static final enum Fully_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

.field public static final enum Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

.field public static final enum Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;


# instance fields
.field private stateCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    const-string v1, "Fully_Locked"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Fully_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    .line 5
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    const-string v1, "Partially_Locked"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    .line 6
    new-instance v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    const-string v1, "Unlocked"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v5, v2}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Fully_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->stateCode:I

    .line 12
    return-void
.end method

.method public static fromInt(I)Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    .locals 6
    .parameter "i"

    .prologue
    .line 18
    invoke-static {}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->values()[Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 19
    .local v3, state:Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    iget v4, v3, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->stateCode:I

    if-ne v4, p0, :cond_0

    .line 20
    return-object v3

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    .end local v3           #state:Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unknow LawmoState"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->$VALUES:[Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/lawmo/LawmoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->stateCode:I

    return v0
.end method
