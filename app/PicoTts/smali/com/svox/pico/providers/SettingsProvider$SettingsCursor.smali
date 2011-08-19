.class Lcom/svox/pico/providers/SettingsProvider$SettingsCursor;
.super Landroid/database/MatrixCursor;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/svox/pico/providers/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsCursor"
.end annotation


# instance fields
.field private settings:Ljava/lang/String;

.field final synthetic this$0:Lcom/svox/pico/providers/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/svox/pico/providers/SettingsProvider;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "columnNames"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/svox/pico/providers/SettingsProvider$SettingsCursor;->this$0:Lcom/svox/pico/providers/SettingsProvider;

    .line 41
    invoke-direct {p0, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/svox/pico/providers/SettingsProvider$SettingsCursor;->settings:Ljava/lang/String;

    return-object v0
.end method

.method public putSettings(Ljava/lang/String;)V
    .locals 0
    .parameter "settings"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/svox/pico/providers/SettingsProvider$SettingsCursor;->settings:Ljava/lang/String;

    .line 46
    return-void
.end method
