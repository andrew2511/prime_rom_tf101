.class public final enum Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
.super Ljava/lang/Enum;
.source "SessionStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/SessionStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

.field public static final enum ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

.field public static final enum COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

.field public static final enum STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    .line 28
    new-instance v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    .line 32
    new-instance v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->$VALUES:[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static fromInt(I)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    .locals 5
    .parameter "i"

    .prologue
    .line 35
    invoke-static {}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->values()[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 36
    .local v3, state:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    move-object v4, v3

    .line 39
    .end local v3           #state:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    :goto_1
    return-object v4

    .line 35
    .restart local v3       #state:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    .end local v3           #state:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    :cond_1
    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->$VALUES:[Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    return-object v0
.end method
