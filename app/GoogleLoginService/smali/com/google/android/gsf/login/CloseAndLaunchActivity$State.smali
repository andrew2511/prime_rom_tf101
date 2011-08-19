.class final enum Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;
.super Ljava/lang/Enum;
.source "CloseAndLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/CloseAndLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

.field public static final enum BACKUP_CONSENT:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

.field public static final enum DONE:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

.field public static final enum SHOW_ACCOUNT_SETTINGS:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

.field public static final enum START:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->START:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 42
    new-instance v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    const-string v1, "BACKUP_CONSENT"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->BACKUP_CONSENT:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 43
    new-instance v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    const-string v1, "SHOW_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->SHOW_ACCOUNT_SETTINGS:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 44
    new-instance v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->DONE:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->START:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->BACKUP_CONSENT:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->SHOW_ACCOUNT_SETTINGS:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->DONE:Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->$VALUES:[Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->$VALUES:[Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    invoke-virtual {v0}, [Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/CloseAndLaunchActivity$State;

    return-object v0
.end method
