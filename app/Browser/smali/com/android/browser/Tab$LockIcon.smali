.class public final enum Lcom/android/browser/Tab$LockIcon;
.super Ljava/lang/Enum;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockIcon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/Tab$LockIcon;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/Tab$LockIcon;

.field public static final enum LOCK_ICON_MIXED:Lcom/android/browser/Tab$LockIcon;

.field public static final enum LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

.field public static final enum LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/browser/Tab$LockIcon;

    const-string v1, "LOCK_ICON_UNSECURE"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/Tab$LockIcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    .line 84
    new-instance v0, Lcom/android/browser/Tab$LockIcon;

    const-string v1, "LOCK_ICON_SECURE"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/Tab$LockIcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

    .line 85
    new-instance v0, Lcom/android/browser/Tab$LockIcon;

    const-string v1, "LOCK_ICON_MIXED"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/Tab$LockIcon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_MIXED:Lcom/android/browser/Tab$LockIcon;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/Tab$LockIcon;

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_UNSECURE:Lcom/android/browser/Tab$LockIcon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_SECURE:Lcom/android/browser/Tab$LockIcon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/Tab$LockIcon;->LOCK_ICON_MIXED:Lcom/android/browser/Tab$LockIcon;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/Tab$LockIcon;->$VALUES:[Lcom/android/browser/Tab$LockIcon;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/Tab$LockIcon;
    .locals 1
    .parameter

    .prologue
    .line 82
    const-class v0, Lcom/android/browser/Tab$LockIcon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/browser/Tab$LockIcon;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/Tab$LockIcon;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/browser/Tab$LockIcon;->$VALUES:[Lcom/android/browser/Tab$LockIcon;

    invoke-virtual {v0}, [Lcom/android/browser/Tab$LockIcon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/Tab$LockIcon;

    return-object v0
.end method
