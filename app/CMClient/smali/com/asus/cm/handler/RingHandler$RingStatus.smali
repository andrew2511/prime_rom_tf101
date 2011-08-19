.class final enum Lcom/asus/cm/handler/RingHandler$RingStatus;
.super Ljava/lang/Enum;
.source "RingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/handler/RingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/cm/handler/RingHandler$RingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/cm/handler/RingHandler$RingStatus;

.field public static final enum Ringing:Lcom/asus/cm/handler/RingHandler$RingStatus;

.field public static final enum Stop:Lcom/asus/cm/handler/RingHandler$RingStatus;


# instance fields
.field mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    new-instance v0, Lcom/asus/cm/handler/RingHandler$RingStatus;

    const-string v1, "Stop"

    invoke-direct {v0, v1, v3, v3}, Lcom/asus/cm/handler/RingHandler$RingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/cm/handler/RingHandler$RingStatus;->Stop:Lcom/asus/cm/handler/RingHandler$RingStatus;

    new-instance v0, Lcom/asus/cm/handler/RingHandler$RingStatus;

    const-string v1, "Ringing"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lcom/asus/cm/handler/RingHandler$RingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/asus/cm/handler/RingHandler$RingStatus;->Ringing:Lcom/asus/cm/handler/RingHandler$RingStatus;

    .line 114
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/cm/handler/RingHandler$RingStatus;

    sget-object v1, Lcom/asus/cm/handler/RingHandler$RingStatus;->Stop:Lcom/asus/cm/handler/RingHandler$RingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/cm/handler/RingHandler$RingStatus;->Ringing:Lcom/asus/cm/handler/RingHandler$RingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/cm/handler/RingHandler$RingStatus;->$VALUES:[Lcom/asus/cm/handler/RingHandler$RingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/asus/cm/handler/RingHandler$RingStatus;->mCode:I

    .line 120
    return-void
.end method

.method public static getStatus(I)Lcom/asus/cm/handler/RingHandler$RingStatus;
    .locals 6
    .parameter "ringStatus"

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, ret:Lcom/asus/cm/handler/RingHandler$RingStatus;
    invoke-static {}, Lcom/asus/cm/handler/RingHandler$RingStatus;->values()[Lcom/asus/cm/handler/RingHandler$RingStatus;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/cm/handler/RingHandler$RingStatus;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 129
    .local v4, s:Lcom/asus/cm/handler/RingHandler$RingStatus;
    iget v5, v4, Lcom/asus/cm/handler/RingHandler$RingStatus;->mCode:I

    if-ne v5, p0, :cond_1

    .line 130
    move-object v3, v4

    .line 134
    .end local v4           #s:Lcom/asus/cm/handler/RingHandler$RingStatus;
    :cond_0
    return-object v3

    .line 128
    .restart local v4       #s:Lcom/asus/cm/handler/RingHandler$RingStatus;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/cm/handler/RingHandler$RingStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/asus/cm/handler/RingHandler$RingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/cm/handler/RingHandler$RingStatus;

    return-object p0
.end method

.method public static values()[Lcom/asus/cm/handler/RingHandler$RingStatus;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/asus/cm/handler/RingHandler$RingStatus;->$VALUES:[Lcom/asus/cm/handler/RingHandler$RingStatus;

    invoke-virtual {v0}, [Lcom/asus/cm/handler/RingHandler$RingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/cm/handler/RingHandler$RingStatus;

    return-object v0
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/asus/cm/handler/RingHandler$RingStatus;->mCode:I

    return v0
.end method
