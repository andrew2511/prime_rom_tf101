.class final enum Lcom/android/launcher2/Workspace$ShrinkState;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ShrinkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/Workspace$ShrinkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/Workspace$ShrinkState;

.field public static final enum BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

.field public static final enum BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

.field public static final enum MIDDLE:Lcom/android/launcher2/Workspace$ShrinkState;

.field public static final enum SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

.field public static final enum TOP:Lcom/android/launcher2/Workspace$ShrinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/android/launcher2/Workspace$ShrinkState;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace$ShrinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    new-instance v0, Lcom/android/launcher2/Workspace$ShrinkState;

    const-string v1, "SPRING_LOADED"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/Workspace$ShrinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    new-instance v0, Lcom/android/launcher2/Workspace$ShrinkState;

    const-string v1, "MIDDLE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/Workspace$ShrinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->MIDDLE:Lcom/android/launcher2/Workspace$ShrinkState;

    new-instance v0, Lcom/android/launcher2/Workspace$ShrinkState;

    const-string v1, "BOTTOM_HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/Workspace$ShrinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    new-instance v0, Lcom/android/launcher2/Workspace$ShrinkState;

    const-string v1, "BOTTOM_VISIBLE"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/Workspace$ShrinkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->MIDDLE:Lcom/android/launcher2/Workspace$ShrinkState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->$VALUES:[Lcom/android/launcher2/Workspace$ShrinkState;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/Workspace$ShrinkState;
    .locals 1
    .parameter

    .prologue
    .line 175
    const-class v0, Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/Workspace$ShrinkState;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/Workspace$ShrinkState;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->$VALUES:[Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-virtual {v0}, [Lcom/android/launcher2/Workspace$ShrinkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/Workspace$ShrinkState;

    return-object v0
.end method
