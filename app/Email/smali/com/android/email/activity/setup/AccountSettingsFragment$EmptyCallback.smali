.class Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSettingsFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 139
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 136
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 137
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 135
    return-void
.end method
