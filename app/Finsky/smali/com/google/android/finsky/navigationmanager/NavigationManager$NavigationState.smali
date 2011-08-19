.class public final enum Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
.super Ljava/lang/Enum;
.source "NavigationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavigationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public static final enum BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public static final enum DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public static final enum HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public static final enum INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

.field public static final enum SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 65
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 66
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    const-string v1, "BROWSE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 67
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    const-string v1, "DETAILS"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 68
    new-instance v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->$VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
    .locals 2
    .parameter "value"

    .prologue
    .line 71
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    .line 72
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->HOME:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    .line 80
    :goto_0
    return-object v0

    .line 73
    :cond_0
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_1

    .line 74
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->BROWSE:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    .line 76
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->DETAILS:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    goto :goto_0

    .line 77
    :cond_2
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    .line 78
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->SEARCH:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    goto :goto_0

    .line 79
    :cond_3
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    .line 80
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->INITIAL:Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    goto :goto_0

    .line 82
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid navigation state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
    .locals 1
    .parameter

    .prologue
    .line 63
    const-class v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->$VALUES:[Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/navigationmanager/NavigationManager$NavigationState;

    return-object v0
.end method
