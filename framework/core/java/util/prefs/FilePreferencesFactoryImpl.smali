.class Ljava/util/prefs/FilePreferencesFactoryImpl;
.super Ljava/lang/Object;
.source "FilePreferencesFactoryImpl.java"

# interfaces
.implements Ljava/util/prefs/PreferencesFactory;


# static fields
.field private static final SYSTEM_ROOT:Ljava/util/prefs/Preferences;

.field private static final USER_ROOT:Ljava/util/prefs/Preferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    .line 30
    new-instance v0, Ljava/util/prefs/FilePreferencesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/prefs/FilePreferencesImpl;-><init>(Z)V

    sput-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public systemRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->SYSTEM_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method

.method public userRoot()Ljava/util/prefs/Preferences;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Ljava/util/prefs/FilePreferencesFactoryImpl;->USER_ROOT:Ljava/util/prefs/Preferences;

    return-object v0
.end method
