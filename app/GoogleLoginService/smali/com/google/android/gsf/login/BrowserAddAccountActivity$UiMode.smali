.class final enum Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;
.super Ljava/lang/Enum;
.source "BrowserAddAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BrowserAddAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UiMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

.field public static final enum UI_MODE_ERROR:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

.field public static final enum UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

.field public static final enum UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const-string v1, "UI_MODE_WEBVIEW"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    .line 135
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const-string v1, "UI_MODE_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    .line 136
    new-instance v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    const-string v1, "UI_MODE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_ERROR:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_WEBVIEW:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_PROGRESS:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->UI_MODE_ERROR:Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->$VALUES:[Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;
    .locals 1
    .parameter

    .prologue
    .line 133
    const-class v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->$VALUES:[Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    invoke-virtual {v0}, [Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/login/BrowserAddAccountActivity$UiMode;

    return-object v0
.end method
