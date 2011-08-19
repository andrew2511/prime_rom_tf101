.class Lcom/android/server/AppWidgetService;
.super Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppWidgetService$ServiceConnectionProxy;,
        Lcom/android/server/AppWidgetService$AppWidgetId;,
        Lcom/android/server/AppWidgetService$Host;,
        Lcom/android/server/AppWidgetService$Provider;
    }
.end annotation


# static fields
.field private static final MIN_UPDATE_PERIOD:I = 0x1b7740

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "appwidgets.xml"

.field private static final SETTINGS_TMP_FILENAME:Ljava/lang/String; = "appwidgets.xml.tmp"

.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field mAlarmManager:Landroid/app/AlarmManager;

.field final mAppWidgetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$AppWidgetId;",
            ">;"
        }
    .end annotation
.end field

.field private final mBoundRemoteViewsServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent$FilterComparison;",
            ">;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Host;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AppWidgetService$Provider;",
            ">;"
        }
    .end annotation
.end field

.field mLocale:Ljava/util/Locale;

.field mNextAppWidgetId:I

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mSafeMode:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;-><init>()V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    .line 169
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    .line 1395
    new-instance v0, Lcom/android/server/AppWidgetService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AppWidgetService$2;-><init>(Lcom/android/server/AppWidgetService;)V

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    iput-object p1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 177
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 178
    return-void
.end method

.method private decrementAppWidgetServiceRefCount(I)V
    .registers 6
    .parameter "appWidgetId"

    .prologue
    .line 581
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 583
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/Intent$FilterComparison;>;"
    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$FilterComparison;

    .line 585
    .local v2, key:Landroid/content/Intent$FilterComparison;
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 586
    .local v0, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 589
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 590
    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/AppWidgetService;->destroyRemoteViewsService(Landroid/content/Intent;)V

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 595
    .end local v0           #ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v2           #key:Landroid/content/Intent$FilterComparison;
    :cond_39
    return-void
.end method

.method private destroyRemoteViewsService(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 538
    new-instance v0, Lcom/android/server/AppWidgetService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/AppWidgetService$1;-><init>(Lcom/android/server/AppWidgetService;Landroid/content/Intent;)V

    .line 558
    .local v0, conn:Landroid/content/ServiceConnection;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 560
    .local v1, token:J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_13

    .line 562
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    return-void

    .line 562
    :catchall_13
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method static getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I
    .registers 5
    .parameter "p"

    .prologue
    .line 945
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 946
    .local v2, instancesSize:I
    new-array v0, v2, [I

    .line 947
    .local v0, appWidgetIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v2, :cond_1a

    .line 948
    iget-object v3, p0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    iget v3, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v3, v0, v1

    .line 947
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 950
    :cond_1a
    return-object v0
.end method

.method private incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V
    .registers 5
    .parameter "appWidgetId"
    .parameter "fc"

    .prologue
    .line 568
    const/4 v0, 0x0

    .line 569
    .local v0, appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 570
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    check-cast v0, Ljava/util/HashSet;

    .line 575
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 576
    return-void

    .line 572
    :cond_19
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 573
    .restart local v0       #appWidgetIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mRemoteViewsServicesAppWidgets:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method private parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;
    .registers 31
    .parameter "component"
    .parameter "ri"

    .prologue
    .line 965
    const/16 v18, 0x0

    .line 967
    .local v18, p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    .line 968
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    const/16 v20, 0x0

    .line 970
    .local v20, parser:Landroid/content/res/XmlResourceParser;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    const-string v26, "android.appwidget.provider"

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v20

    .line 972
    if-nez v20, :cond_46

    .line 973
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No android.appwidget.provider meta-data for AppWidget provider \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_2d4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3e} :catch_2a1

    .line 975
    const/16 v25, 0x0

    .line 1073
    if-eqz v20, :cond_45

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1075
    :cond_45
    :goto_45
    return-object v25

    .line 978
    :cond_46
    :try_start_46
    invoke-static/range {v20 .. v20}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 982
    .local v4, attrs:Landroid/util/AttributeSet;
    :cond_4a
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    .local v23, type:I
    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_5e

    const/16 v25, 0x2

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_4a

    .line 986
    :cond_5e
    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 987
    .local v17, nodeName:Ljava/lang/String;
    const-string v25, "appwidget-provider"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_98

    .line 988
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Meta-data does not start with appwidget-provider tag for AppWidget provider \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_46 .. :try_end_90} :catchall_2d4
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_90} :catch_2a1

    .line 990
    const/16 v25, 0x0

    .line 1073
    if-eqz v20, :cond_45

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_45

    .line 993
    :cond_98
    :try_start_98
    new-instance v19, Lcom/android/server/AppWidgetService$Provider;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/AppWidgetService$Provider;-><init>()V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_2d4
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_9d} :catch_2a1

    .line 994
    .end local v18           #p:Lcom/android/server/AppWidgetService$Provider;
    .local v19, p:Lcom/android/server/AppWidgetService$Provider;
    :try_start_9d
    new-instance v16, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v16 .. v16}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 997
    .local v16, info:Landroid/appwidget/AppWidgetProviderInfo;
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "android.appwidget.oldName"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->oldName:Ljava/lang/String;

    .line 1000
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1001
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/server/AppWidgetService$Provider;->uid:I

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    .line 1006
    .local v21, res:Landroid/content/res/Resources;
    sget-object v25, Lcom/android/internal/R$styleable;->AppWidgetProviderInfo:[I

    move-object/from16 v0, v21

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 1012
    .local v22, sa:Landroid/content/res/TypedArray;
    const/16 v25, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1014
    .local v24, value:Landroid/util/TypedValue;
    if-eqz v24, :cond_239

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_fc
    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    .line 1015
    const/16 v25, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1016
    if-eqz v24, :cond_23d

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_114
    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    .line 1017
    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    .line 1019
    const/16 v25, 0x5

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    .line 1021
    const/16 v25, 0x6

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1023
    .local v13, className:Ljava/lang/String;
    if-eqz v13, :cond_162

    .line 1024
    new-instance v25, Landroid/content/ComponentName;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    .line 1026
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v25, v0

    move-object v0, v3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 1027
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    .line 1028
    const/16 v25, 0x7

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 1030
    const/16 v25, 0x8

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 1032
    const/16 v25, 0x9

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    .line 1036
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1037
    if-eqz v24, :cond_241

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_1d1
    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    .line 1038
    const/16 v25, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1039
    if-eqz v24, :cond_244

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_1e9
    move/from16 v0, v25

    move-object/from16 v1, v16

    iput v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    .line 1040
    const/16 v25, 0xa

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->notifyResize:Z

    .line 1041
    const/16 v25, 0xb

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 1042
    .local v11, availableWidthsId:I
    const/16 v25, -0x1

    move v0, v11

    move/from16 v1, v25

    if-eq v0, v1, :cond_252

    .line 1043
    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1044
    .local v10, availableWidthsArray:Landroid/content/res/TypedArray;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    .line 1045
    .local v12, availableWidthsLength:I
    new-array v9, v12, [I

    .line 1046
    .local v9, availableWidths:[I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_226
    if-ge v15, v12, :cond_24a

    .line 1047
    invoke-virtual {v10, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1048
    if-eqz v24, :cond_247

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_234
    aput v25, v9, v15

    .line 1046
    add-int/lit8 v15, v15, 0x1

    goto :goto_226

    .line 1014
    .end local v9           #availableWidths:[I
    .end local v10           #availableWidthsArray:Landroid/content/res/TypedArray;
    .end local v11           #availableWidthsId:I
    .end local v12           #availableWidthsLength:I
    .end local v13           #className:Ljava/lang/String;
    .end local v15           #i:I
    :cond_239
    const/16 v25, 0x0

    goto/16 :goto_fc

    .line 1016
    :cond_23d
    const/16 v25, 0x0

    goto/16 :goto_114

    .line 1037
    .restart local v13       #className:Ljava/lang/String;
    :cond_241
    const/16 v25, 0x0

    goto :goto_1d1

    .line 1039
    :cond_244
    const/16 v25, 0x0

    goto :goto_1e9

    .line 1048
    .restart local v9       #availableWidths:[I
    .restart local v10       #availableWidthsArray:Landroid/content/res/TypedArray;
    .restart local v11       #availableWidthsId:I
    .restart local v12       #availableWidthsLength:I
    .restart local v15       #i:I
    :cond_247
    const/16 v25, 0x0

    goto :goto_234

    .line 1050
    :cond_24a
    move-object v0, v9

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    .line 1051
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1053
    .end local v9           #availableWidths:[I
    .end local v10           #availableWidthsArray:Landroid/content/res/TypedArray;
    .end local v12           #availableWidthsLength:I
    .end local v15           #i:I
    :cond_252
    const/16 v25, 0xc

    const/16 v26, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1054
    .local v7, availableHeightsId:I
    const/16 v25, -0x1

    move v0, v7

    move/from16 v1, v25

    if-eq v0, v1, :cond_293

    .line 1055
    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 1056
    .local v6, availableHeightsArray:Landroid/content/res/TypedArray;
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v8

    .line 1057
    .local v8, availableHeightsLength:I
    new-array v5, v8, [I

    .line 1058
    .local v5, availableHeights:[I
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_275
    if-ge v15, v8, :cond_28b

    .line 1059
    invoke-virtual {v6, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v24

    .line 1060
    if-eqz v24, :cond_288

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v25, v0

    :goto_283
    aput v25, v5, v15

    .line 1058
    add-int/lit8 v15, v15, 0x1

    goto :goto_275

    .line 1060
    :cond_288
    const/16 v25, 0x0

    goto :goto_283

    .line 1062
    :cond_28b
    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    .line 1063
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1065
    .end local v5           #availableHeights:[I
    .end local v6           #availableHeightsArray:Landroid/content/res/TypedArray;
    .end local v8           #availableHeightsLength:I
    .end local v15           #i:I
    :cond_293
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_296
    .catchall {:try_start_9d .. :try_end_296} :catchall_2db
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_296} :catch_2df

    .line 1073
    if-eqz v20, :cond_29b

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_29b
    move-object/from16 v18, v19

    .end local v19           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v18       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object/from16 v25, v19

    .line 1075
    goto/16 :goto_45

    .line 1066
    .end local v4           #attrs:Landroid/util/AttributeSet;
    .end local v7           #availableHeightsId:I
    .end local v11           #availableWidthsId:I
    .end local v13           #className:Ljava/lang/String;
    .end local v16           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v17           #nodeName:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    .end local v22           #sa:Landroid/content/res/TypedArray;
    .end local v23           #type:I
    .end local v24           #value:Landroid/util/TypedValue;
    :catch_2a1
    move-exception v25

    move-object/from16 v14, v25

    .line 1070
    .local v14, e:Ljava/lang/Exception;
    :goto_2a4
    :try_start_2a4
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "XML parsing failed for AppWidget provider \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v14

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2cb
    .catchall {:try_start_2a4 .. :try_end_2cb} :catchall_2d4

    .line 1071
    const/16 v25, 0x0

    .line 1073
    if-eqz v20, :cond_45

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_45

    .end local v14           #e:Ljava/lang/Exception;
    :catchall_2d4
    move-exception v25

    :goto_2d5
    if-eqz v20, :cond_2da

    invoke-interface/range {v20 .. v20}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2da
    throw v25

    .end local v18           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v4       #attrs:Landroid/util/AttributeSet;
    .restart local v17       #nodeName:Ljava/lang/String;
    .restart local v19       #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v23       #type:I
    :catchall_2db
    move-exception v25

    move-object/from16 v18, v19

    .end local v19           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v18       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_2d5

    .line 1066
    .end local v18           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v19       #p:Lcom/android/server/AppWidgetService$Provider;
    :catch_2df
    move-exception v25

    move-object/from16 v14, v25

    move-object/from16 v18, v19

    .end local v19           #p:Lcom/android/server/AppWidgetService$Provider;
    .restart local v18       #p:Lcom/android/server/AppWidgetService$Provider;
    goto :goto_2a4
.end method

.method private unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 516
    iget v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 518
    .local v0, appWidgetId:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 520
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;>;"
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 522
    .local v3, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_c

    .line 523
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 525
    .local v1, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v1}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 526
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 527
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    .line 533
    .end local v1           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v3           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_36
    invoke-direct {p0, v0}, Lcom/android/server/AppWidgetService;->decrementAppWidgetServiceRefCount(I)V

    .line 534
    return-void
.end method


# virtual methods
.method addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    .registers 7
    .parameter "ri"

    .prologue
    const/4 v4, 0x0

    .line 865
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_e

    move v1, v4

    .line 877
    :goto_d
    return v1

    .line 868
    :cond_e
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v4

    .line 869
    goto :goto_d

    .line 871
    :cond_18
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 873
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_32

    .line 874
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    const/4 v1, 0x1

    goto :goto_d

    :cond_32
    move v1, v4

    .line 877
    goto :goto_d
.end method

.method addProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 10
    .parameter "pkgName"

    .prologue
    .line 1478
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1479
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1480
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1483
    .local v2, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_2d

    const/4 v6, 0x0

    move v0, v6

    .line 1484
    .local v0, N:I
    :goto_16
    const/4 v3, 0x0

    .local v3, i:I
    :goto_17
    if-ge v3, v0, :cond_3f

    .line 1485
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 1486
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    iget-object v1, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1487
    .local v1, ai:Landroid/content/pm/ActivityInfo;
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-eqz v6, :cond_33

    .line 1484
    :cond_2a
    :goto_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1483
    .end local v0           #N:I
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v3           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_2d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_16

    .line 1490
    .restart local v0       #N:I
    .restart local v1       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v3       #i:I
    .restart local v5       #ri:Landroid/content/pm/ResolveInfo;
    :cond_33
    iget-object v6, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1491
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    goto :goto_2a

    .line 1494
    .end local v1           #ai:Landroid/content/pm/ActivityInfo;
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_3f
    return-void
.end method

.method public allocateAppWidgetId(Ljava/lang/String;I)I
    .registers 9
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 281
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 282
    :try_start_7
    iget v0, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 284
    .local v0, appWidgetId:I
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 286
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    new-instance v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v3}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 287
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iput v0, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 288
    iput-object v2, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 290
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 295
    monitor-exit v4

    return v0

    .line 296
    .end local v0           #appWidgetId:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_29
    move-exception v5

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v5
.end method

.method public bindAppWidgetId(ILandroid/content/ComponentName;)V
    .registers 11
    .parameter "appWidgetId"
    .parameter "provider"

    .prologue
    const/4 v7, 0x1

    .line 396
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BIND_APPWIDGET"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindGagetId appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 399
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 400
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v0, :cond_39

    .line 401
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_36

    throw v4

    .line 403
    .restart local v0       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_39
    :try_start_39
    iget-object v4, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v4, :cond_66

    .line 404
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appWidgetId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " already bound to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v6, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 407
    :cond_66
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v2

    .line 408
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v2, :cond_85

    .line 409
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not a appwidget provider: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 411
    :cond_85
    iget-boolean v4, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-eqz v4, :cond_a2

    .line 412
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t bind to a 3rd party provider in safe mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    :cond_a2
    iput-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 417
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v4, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 419
    .local v1, instancesSize:I
    if-ne v1, v7, :cond_b4

    .line 421
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 428
    :cond_b4
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p1, v4, v5

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 431
    invoke-static {v2}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 433
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_39 .. :try_end_c8} :catchall_36

    .line 434
    return-void
.end method

.method public bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 22
    .parameter "appWidgetId"
    .parameter "intent"
    .parameter "connection"

    .prologue
    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object v14, v0

    monitor-enter v14

    .line 439
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v9

    .line 440
    .local v9, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v9, :cond_17

    .line 441
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "bad appWidgetId"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 484
    .end local v9           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_14
    move-exception v15

    monitor-exit v14
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v15

    .line 443
    .restart local v9       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_17
    :try_start_17
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_14

    move-result-object v4

    .line 445
    .local v4, componentName:Landroid/content/ComponentName;
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x1000

    move-object v0, v15

    move-object v1, v4

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    .line 447
    .local v11, si:Landroid/content/pm/ServiceInfo;
    const-string v15, "android.permission.BIND_REMOTEVIEWS"

    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_75

    .line 448
    new-instance v15, Ljava/lang/SecurityException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Selected service does not require android.permission.BIND_REMOTEVIEWS: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_57} :catch_57

    .line 452
    .end local v11           #si:Landroid/content/pm/ServiceInfo;
    :catch_57
    move-exception v15

    move-object v7, v15

    .line 453
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_59
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown component "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 459
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11       #si:Landroid/content/pm/ServiceInfo;
    :cond_75
    const/4 v5, 0x0

    .line 460
    .local v5, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    new-instance v8, Landroid/content/Intent$FilterComparison;

    move-object v0, v8

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 461
    .local v8, fc:Landroid/content/Intent$FilterComparison;
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v15, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    .line 462
    .local v10, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_af

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    check-cast v5, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 464
    .restart local v5       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v5}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object v15, v0

    invoke-virtual {v15, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_af
    move-object v6, v5

    .line 471
    .end local v5           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .local v6, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_b3
    .catchall {:try_start_59 .. :try_end_b3} :catchall_14

    move-result-wide v12

    .line 473
    .local v12, token:J
    :try_start_b4
    new-instance v5, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    move-object v0, v5

    move-object v1, v10

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;-><init>(Landroid/util/Pair;Landroid/os/IBinder;)V
    :try_end_bd
    .catchall {:try_start_b4 .. :try_end_bd} :catchall_e2

    .line 474
    .end local v6           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v5       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object v15, v0

    const/16 v16, 0x1

    move-object v0, v15

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    move-object v15, v0

    invoke-virtual {v15, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d5
    .catchall {:try_start_bd .. :try_end_d5} :catchall_e8

    .line 477
    :try_start_d5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetService;->incrementAppWidgetServiceRefCount(ILandroid/content/Intent$FilterComparison;)V

    .line 484
    monitor-exit v14

    .line 485
    return-void

    .line 477
    .end local v5           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v6       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :catchall_e2
    move-exception v15

    move-object v5, v6

    .end local v6           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .restart local v5       #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    :goto_e4
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v15
    :try_end_e8
    .catchall {:try_start_d5 .. :try_end_e8} :catchall_14

    :catchall_e8
    move-exception v15

    goto :goto_e4
.end method

.method canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z
    .registers 6
    .parameter "id"
    .parameter "callingUid"

    .prologue
    const/4 v2, 0x1

    .line 776
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v0, v0, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v0, p2, :cond_9

    move v0, v2

    .line 790
    :goto_8
    return v0

    .line 780
    :cond_9
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v0, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v0, p2, :cond_15

    move v0, v2

    .line 782
    goto :goto_8

    .line 784
    :cond_15
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    .line 787
    goto :goto_8

    .line 790
    :cond_21
    const/4 v0, 0x0

    goto :goto_8
.end method

.method cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 6
    .parameter "p"

    .prologue
    .line 383
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1a

    .line 384
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    .local v0, token:J
    :try_start_f
    iget-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 391
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    .line 393
    .end local v0           #token:J
    :cond_1a
    return-void

    .line 389
    .restart local v0       #token:J
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public deleteAllHosts()V
    .registers 8

    .prologue
    .line 321
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 322
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 323
    .local v1, callingUid:I
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 324
    .local v0, N:I
    const/4 v2, 0x0

    .line 325
    .local v2, changed:Z
    const/4 v6, 0x1

    sub-int v4, v0, v6

    .local v4, i:I
    :goto_11
    if-ltz v4, :cond_26

    .line 326
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    .line 327
    .local v3, host:Lcom/android/server/AppWidgetService$Host;
    iget v6, v3, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v6, v1, :cond_23

    .line 328
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 329
    const/4 v2, 0x1

    .line 325
    :cond_23
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 332
    .end local v3           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_26
    if-eqz v2, :cond_2b

    .line 333
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 335
    :cond_2b
    monitor-exit v5

    .line 336
    return-void

    .line 335
    .end local v0           #N:I
    .end local v1           #callingUid:I
    .end local v2           #changed:Z
    .end local v4           #i:I
    :catchall_2d
    move-exception v6

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v6
.end method

.method public deleteAppWidgetId(I)V
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 301
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 302
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_f

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 306
    :cond_f
    monitor-exit v1

    .line 307
    return-void

    .line 306
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_11
    move-exception v2

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v2
.end method

.method deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V
    .registers 7
    .parameter "id"

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/AppWidgetService;->unbindAppWidgetRemoteViewsServicesLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 354
    iget-object v0, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 355
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v3, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 358
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    iget-object v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 361
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v2, :cond_57

    .line 362
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-boolean v3, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v3, :cond_57

    .line 365
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    const-string v3, "appWidgetId"

    iget v4, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_57

    .line 371
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 374
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v3, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 376
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 380
    .end local v1           #intent:Landroid/content/Intent;
    :cond_57
    return-void
.end method

.method public deleteHost(I)V
    .registers 6
    .parameter "hostId"

    .prologue
    .line 310
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v2

    .line 311
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 312
    .local v0, callingUid:I
    invoke-virtual {p0, v0, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v1

    .line 313
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v1, :cond_13

    .line 314
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->saveStateLocked()V

    .line 317
    :cond_13
    monitor-exit v2

    .line 318
    return-void

    .line 317
    .end local v0           #callingUid:I
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_15
    move-exception v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v3
.end method

.method deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 6
    .parameter "host"

    .prologue
    .line 339
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    .local v0, N:I
    const/4 v3, 0x1

    sub-int v1, v0, v3

    .local v1, i:I
    :goto_9
    if-ltz v1, :cond_19

    .line 341
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 342
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2}, Lcom/android/server/AppWidgetService;->deleteAppWidgetLocked(Lcom/android/server/AppWidgetService$AppWidgetId;)V

    .line 340
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 344
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_19
    iget-object v3, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 348
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 214
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_33

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    :goto_32
    return-void

    .line 222
    :cond_33
    iget-object v6, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v6

    .line 223
    :try_start_36
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 224
    .local v0, N:I
    const-string v7, "Providers:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_42
    if-ge v2, v0, :cond_a2

    .line 226
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AppWidgetService$Provider;

    .line 227
    .local v5, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v5, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 228
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] provider "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 231
    const-string v7, "    min=("

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 232
    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 233
    const-string v7, ") updatePeriodMillis="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 235
    const-string v7, " initialLayout=#"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 240
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_a2
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 241
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v7, "AppWidgetIds:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const/4 v2, 0x0

    :goto_b3
    if-ge v2, v0, :cond_12a

    .line 244
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 245
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] id="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 247
    const-string v7, "    hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 249
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 250
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v7, v7, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(I)V

    .line 251
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v7, :cond_109

    .line 252
    const-string v7, "    provider="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    :cond_109
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    if-eqz v7, :cond_119

    .line 256
    const-string v7, "    host.callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v7, v7, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 258
    :cond_119
    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_127

    .line 259
    const-string v7, "    views="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 243
    :cond_127
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 263
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_12a
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 264
    const-string v7, " "

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const-string v7, "Hosts:"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    :goto_13b
    if-ge v2, v0, :cond_195

    .line 267
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 268
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    const-string v7, "  ["

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, "] hostId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x20

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 270
    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x2f

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 271
    iget v7, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(C)V

    .line 272
    const-string v7, "    callbacks="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 273
    const-string v7, "    instances.size="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 274
    const-string v7, " zombie="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_13b

    .line 276
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_195
    monitor-exit v6

    goto/16 :goto_32

    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_198
    move-exception v7

    monitor-exit v6
    :try_end_19a
    .catchall {:try_start_36 .. :try_end_19a} :catchall_198

    throw v7
.end method

.method enforceCallingUid(Ljava/lang/String;)I
    .registers 8
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v0

    .line 1090
    .local v0, callingUid:I
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_7} :catch_29

    move-result v2

    .line 1095
    .local v2, packageUid:I
    if-eq v0, v2, :cond_43

    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1096
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1091
    .end local v2           #packageUid:I
    :catch_29
    move-exception v1

    .line 1092
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName and uid don\'t match packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1099
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #packageUid:I
    :cond_43
    return v0
.end method

.method public getAppWidgetIds(Landroid/content/ComponentName;)[I
    .registers 6
    .parameter "provider"

    .prologue
    .line 954
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 955
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v0

    .line 956
    .local v0, p:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    iget v3, v0, Lcom/android/server/AppWidgetService$Provider;->uid:I

    if-ne v2, v3, :cond_18

    .line 957
    invoke-static {v0}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v2

    monitor-exit v1

    move-object v1, v2

    .line 959
    :goto_17
    return-object v1

    :cond_18
    const/4 v2, 0x0

    new-array v2, v2, [I

    monitor-exit v1

    move-object v1, v2

    goto :goto_17

    .line 961
    .end local v0           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 598
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 599
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 600
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v2, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v2, :cond_1a

    .line 601
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-object v2, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    monitor-exit v1

    move-object v1, v2

    .line 603
    :goto_19
    return-object v1

    :cond_1a
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_19

    .line 604
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public getAppWidgetViews(I)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "appWidgetId"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 609
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v0

    .line 610
    .local v0, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-eqz v0, :cond_e

    .line 611
    iget-object v2, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    monitor-exit v1

    move-object v1, v2

    .line 613
    :goto_d
    return-object v1

    :cond_e
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_d

    .line 614
    .end local v0           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :catchall_12
    move-exception v2

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v2
.end method

.method public getInstalledProviders()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 619
    :try_start_3
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 620
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v0, :cond_25

    .line 622
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Provider;

    .line 623
    .local v2, p:Lcom/android/server/AppWidgetService$Provider;
    iget-boolean v5, v2, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v5, :cond_22

    .line 624
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 627
    .end local v2           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_25
    monitor-exit v4

    return-object v3

    .line 628
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :catchall_27
    move-exception v5

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v5
.end method

.method getUidForPackage(Ljava/lang/String;)I
    .registers 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1080
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_13

    .line 1081
    :cond_d
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v1

    .line 1083
    :cond_13
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    return v1
.end method

.method loadAppWidgetList()V
    .registers 8

    .prologue
    .line 851
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 853
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 854
    .local v3, intent:Landroid/content/Intent;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 857
    .local v1, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v1, :cond_22

    const/4 v6, 0x0

    move v0, v6

    .line 858
    .local v0, N:I
    :goto_13
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    if-ge v2, v0, :cond_28

    .line 859
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 860
    .local v5, ri:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v5}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 857
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #ri:Landroid/content/pm/ResolveInfo;
    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v0, v6

    goto :goto_13

    .line 862
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_28
    return-void
.end method

.method loadStateLocked()V
    .registers 4

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 1120
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 1125
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1126
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    .line 1127
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1129
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1136
    :cond_1a
    :goto_1a
    return-void

    .line 1131
    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1132
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->readStateFromFileLocked(Ljava/io/File;)V

    .line 1134
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_1a
.end method

.method lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;
    .registers 7
    .parameter "appWidgetId"

    .prologue
    .line 794
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v1

    .line 795
    .local v1, callingUid:I
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 796
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_24

    .line 797
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 798
    .local v3, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v4, v3, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    if-ne v4, p1, :cond_21

    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->canAccessAppWidgetId(Lcom/android/server/AppWidgetService$AppWidgetId;I)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object v4, v3

    .line 802
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_20
    return-object v4

    .line 796
    .restart local v3       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 802
    .end local v3           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_24
    const/4 v4, 0x0

    goto :goto_20
.end method

.method lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;
    .registers 7
    .parameter "uid"
    .parameter "hostId"

    .prologue
    .line 818
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 819
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-ge v2, v0, :cond_1e

    .line 820
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 821
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->uid:I

    if-ne v3, p1, :cond_1b

    iget v3, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v3, p2, :cond_1b

    move-object v3, v1

    .line 825
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1a
    return-object v3

    .line 819
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 825
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;
    .registers 9
    .parameter "uid"
    .parameter "packageName"
    .parameter "hostId"

    .prologue
    .line 829
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 830
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-ge v3, v0, :cond_22

    .line 831
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 832
    .local v1, h:Lcom/android/server/AppWidgetService$Host;
    iget v4, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    if-ne v4, p3, :cond_1f

    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v1

    .line 841
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :goto_1e
    return-object v4

    .line 830
    .restart local v1       #h:Lcom/android/server/AppWidgetService$Host;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 836
    .end local v1           #h:Lcom/android/server/AppWidgetService$Host;
    :cond_22
    new-instance v2, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v2}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 837
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p2, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    .line 838
    iput p1, v2, Lcom/android/server/AppWidgetService$Host;->uid:I

    .line 839
    iput p3, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 840
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    .line 841
    goto :goto_1e
.end method

.method lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;
    .registers 7
    .parameter "provider"

    .prologue
    .line 806
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, className:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 808
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, v0, :cond_2e

    .line 809
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 810
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    :cond_29
    move-object v4, v3

    .line 814
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :goto_2a
    return-object v4

    .line 808
    .restart local v3       #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 814
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method public notifyAppWidgetViewDataChanged([II)V
    .registers 8
    .parameter "appWidgetIds"
    .parameter "viewId"

    .prologue
    .line 666
    if-nez p1, :cond_3

    .line 680
    :cond_2
    :goto_2
    return-void

    .line 669
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 672
    array-length v0, p1

    .line 674
    .local v0, N:I
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 675
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 676
    :try_start_d
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 677
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V

    .line 675
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 679
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_19
    monitor-exit v3

    goto :goto_2

    :catchall_1b
    move-exception v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method notifyAppWidgetViewDataChangedInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;I)V
    .registers 6
    .parameter "id"
    .parameter "viewId"

    .prologue
    .line 729
    if-eqz p1, :cond_21

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_21

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_21

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_21

    .line 731
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_21

    .line 734
    :try_start_18
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->viewDataChanged(II)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_21} :catch_22

    .line 742
    :cond_21
    :goto_21
    return-void

    .line 735
    :catch_22
    move-exception v1

    move-object v0, v1

    .line 738
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_21
.end method

.method public partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 8
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 649
    if-nez p1, :cond_3

    .line 663
    :cond_2
    :goto_2
    return-void

    .line 652
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 655
    array-length v0, p1

    .line 657
    .local v0, N:I
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 658
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_1a

    .line 659
    :try_start_d
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 660
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v4, 0x1

    invoke-virtual {p0, v2, p2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 658
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 662
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_1a
    monitor-exit v3

    goto :goto_2

    :catchall_1c
    move-exception v4

    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1c

    throw v4
.end method

.method pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V
    .registers 3
    .parameter "host"

    .prologue
    .line 845
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-nez v0, :cond_11

    .line 846
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    :cond_11
    return-void
.end method

.method readStateFromFileLocked(Ljava/io/File;)V
    .registers 30
    .parameter "file"

    .prologue
    .line 1243
    const/16 v20, 0x0

    .line 1245
    .local v20, stream:Ljava/io/FileInputStream;
    const/16 v22, 0x0

    .line 1248
    .local v22, success:Z
    :try_start_4
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_d} :catch_392
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_d} :catch_38d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_d} :catch_388
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_d} :catch_2f1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_d} :catch_317

    .line 1249
    .end local v20           #stream:Ljava/io/FileInputStream;
    .local v21, stream:Ljava/io/FileInputStream;
    :try_start_d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 1250
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/16 v25, 0x0

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1253
    const/16 v18, 0x0

    .line 1254
    .local v18, providerIndex:I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .local v11, loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    :cond_22
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v24

    .line 1257
    .local v24, type:I
    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d8

    .line 1258
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 1259
    .local v23, tag:Ljava/lang/String;
    const-string v25, "p"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_12c

    .line 1262
    const/16 v25, 0x0

    const-string v26, "pkg"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1263
    .local v16, pkg:Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "cl"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1265
    .local v4, cl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_61
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_61} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_61} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_61} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_61} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_61} :catch_37b

    move-result-object v14

    .line 1267
    .local v14, packageManager:Landroid/content/pm/PackageManager;
    :try_start_62
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    move-object v0, v14

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_76} :catch_110
    .catch Ljava/lang/NullPointerException; {:try_start_62 .. :try_end_76} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_76} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_76} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_76} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_62 .. :try_end_76} :catch_37b

    .line 1274
    :goto_76
    :try_start_76
    new-instance v25, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v12

    .line 1275
    .local v12, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v12, :cond_c9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_c9

    .line 1277
    new-instance v12, Lcom/android/server/AppWidgetService$Provider;

    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    invoke-direct {v12}, Lcom/android/server/AppWidgetService$Provider;-><init>()V

    .line 1278
    .restart local v12       #p:Lcom/android/server/AppWidgetService$Provider;
    new-instance v25, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct/range {v25 .. v25}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    move-object/from16 v0, v25

    move-object v1, v12

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1279
    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v25, v0

    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 1280
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object v1, v12

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    :cond_c9
    if-eqz v12, :cond_d6

    .line 1285
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d6
    .catch Ljava/lang/NullPointerException; {:try_start_76 .. :try_end_d6} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_d6} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_76 .. :try_end_d6} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_d6} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_76 .. :try_end_d6} :catch_37b

    .line 1287
    :cond_d6
    add-int/lit8 v18, v18, 0x1

    .line 1347
    .end local v4           #cl:Ljava/lang/String;
    .end local v12           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v23           #tag:Ljava/lang/String;
    :cond_d8
    :goto_d8
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_22

    .line 1348
    const/16 v22, 0x1

    move-object/from16 v20, v21

    .line 1361
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v21           #stream:Ljava/io/FileInputStream;
    .end local v24           #type:I
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_e4
    if-eqz v20, :cond_e9

    .line 1362
    :try_start_e6
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_e9} :catch_377

    .line 1368
    :cond_e9
    :goto_e9
    if-eqz v22, :cond_33d

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x1

    sub-int v9, v25, v26

    .end local p1
    .local v9, i:I
    :goto_f9
    if-ltz v9, :cond_37a

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Host;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1371
    add-int/lit8 v9, v9, -0x1

    goto :goto_f9

    .line 1268
    .end local v9           #i:I
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v4       #cl:Ljava/lang/String;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v14       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v16       #pkg:Ljava/lang/String;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    .restart local p1
    :catch_110
    move-exception v25

    move-object/from16 v5, v25

    .line 1269
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x1

    :try_start_115
    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v16, v25, v26

    move-object v0, v14

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1271
    .local v17, pkgs:[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v16, v17, v25

    goto/16 :goto_76

    .line 1289
    .end local v4           #cl:Ljava/lang/String;
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v14           #packageManager:Landroid/content/pm/PackageManager;
    .end local v16           #pkg:Ljava/lang/String;
    .end local v17           #pkgs:[Ljava/lang/String;
    :cond_12c
    const-string v25, "h"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f1

    .line 1290
    new-instance v8, Lcom/android/server/AppWidgetService$Host;

    invoke-direct {v8}, Lcom/android/server/AppWidgetService$Host;-><init>()V

    .line 1294
    .local v8, host:Lcom/android/server/AppWidgetService$Host;
    const/16 v25, 0x0

    const-string v26, "pkg"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v8

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;
    :try_end_14f
    .catch Ljava/lang/NullPointerException; {:try_start_115 .. :try_end_14f} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_115 .. :try_end_14f} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_115 .. :try_end_14f} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_14f} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_115 .. :try_end_14f} :catch_37b

    .line 1296
    :try_start_14f
    move-object v0, v8

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->getUidForPackage(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->uid:I
    :try_end_161
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14f .. :try_end_161} :catch_1be
    .catch Ljava/lang/NullPointerException; {:try_start_14f .. :try_end_161} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_14f .. :try_end_161} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14f .. :try_end_161} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_161} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14f .. :try_end_161} :catch_37b

    .line 1300
    :goto_161
    :try_start_161
    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    move/from16 v25, v0

    if-eqz v25, :cond_170

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d8

    .line 1303
    :cond_170
    const/16 v25, 0x0

    const-string v26, "id"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v8

    iput v0, v1, Lcom/android/server/AppWidgetService$Host;->hostId:I

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_194
    .catch Ljava/lang/NullPointerException; {:try_start_161 .. :try_end_194} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_161 .. :try_end_194} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_161 .. :try_end_194} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_194} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_161 .. :try_end_194} :catch_37b

    goto/16 :goto_d8

    .line 1349
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_196
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1350
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NullPointerException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_19b
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e4

    .line 1297
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v8       #host:Lcom/android/server/AppWidgetService$Host;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    :catch_1be
    move-exception v25

    move-object/from16 v6, v25

    .line 1298
    .local v6, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v25, 0x1

    :try_start_1c3
    move/from16 v0, v25

    move-object v1, v8

    iput-boolean v0, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z
    :try_end_1c8
    .catch Ljava/lang/NullPointerException; {:try_start_1c3 .. :try_end_1c8} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_1c3 .. :try_end_1c8} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c3 .. :try_end_1c8} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c8} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1c3 .. :try_end_1c8} :catch_37b

    goto :goto_161

    .line 1351
    .end local v6           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_1c9
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1352
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Ljava/lang/NumberFormatException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_1ce
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e4

    .line 1308
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v11       #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .restart local v15       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18       #providerIndex:I
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local v23       #tag:Ljava/lang/String;
    .restart local v24       #type:I
    :cond_1f1
    :try_start_1f1
    const-string v25, "g"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d8

    .line 1309
    new-instance v10, Lcom/android/server/AppWidgetService$AppWidgetId;

    invoke-direct {v10}, Lcom/android/server/AppWidgetService$AppWidgetId;-><init>()V

    .line 1310
    .local v10, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v25, 0x0

    const-string v26, "id"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v25

    move/from16 v0, v25

    move-object v1, v10

    iput v0, v1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    .line 1311
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_238

    .line 1312
    move-object v0, v10

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/AppWidgetService;->mNextAppWidgetId:I

    .line 1315
    :cond_238
    const/16 v25, 0x0

    const-string v26, "p"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1316
    .local v19, providerString:Ljava/lang/String;
    if-eqz v19, :cond_267

    .line 1320
    const/16 v25, 0x10

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    .line 1321
    .local v13, pIndex:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object v0, v11

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 1326
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d8

    .line 1333
    .end local v13           #pIndex:I
    :cond_267
    const/16 v25, 0x0

    const-string v26, "h"

    move-object v0, v15

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    .line 1334
    .local v7, hIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Host;

    iput-object v3, v10, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 1335
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d8

    .line 1340
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2aa

    .line 1341
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    :cond_2aa
    move-object v0, v10

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c7
    .catch Ljava/lang/NullPointerException; {:try_start_1f1 .. :try_end_2c7} :catch_196
    .catch Ljava/lang/NumberFormatException; {:try_start_1f1 .. :try_end_2c7} :catch_1c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f1 .. :try_end_2c7} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_2c7} :catch_381
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f1 .. :try_end_2c7} :catch_37b

    goto/16 :goto_d8

    .line 1353
    .end local v7           #hIndex:I
    .end local v10           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v11           #loadedProviders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/AppWidgetService$Provider;>;"
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #providerIndex:I
    .end local v19           #providerString:Ljava/lang/String;
    .end local v23           #tag:Ljava/lang/String;
    .end local v24           #type:I
    :catch_2c9
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .line 1354
    .end local v21           #stream:Ljava/io/FileInputStream;
    .local v5, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    :goto_2ce
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e4

    .line 1355
    .end local v5           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2f1
    move-exception v25

    move-object/from16 v5, v25

    .line 1356
    .local v5, e:Ljava/io/IOException;
    :goto_2f4
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e4

    .line 1357
    .end local v5           #e:Ljava/io/IOException;
    :catch_317
    move-exception v25

    move-object/from16 v5, v25

    .line 1358
    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_31a
    const-string v25, "AppWidgetService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "failed parsing "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e4

    .line 1376
    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_33d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1379
    .local v3, N:I
    const/4 v9, 0x0

    .end local p1
    .restart local v9       #i:I
    :goto_35a
    if-ge v9, v3, :cond_37a

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppWidgetService$Provider;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1379
    add-int/lit8 v9, v9, 0x1

    goto :goto_35a

    .line 1364
    .end local v3           #N:I
    .end local v9           #i:I
    .restart local p1
    :catch_377
    move-exception v25

    goto/16 :goto_e9

    .line 1383
    .end local p1
    .restart local v9       #i:I
    :cond_37a
    return-void

    .line 1357
    .end local v9           #i:I
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    .restart local p1
    :catch_37b
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .end local v21           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    goto :goto_31a

    .line 1355
    .end local v20           #stream:Ljava/io/FileInputStream;
    .restart local v21       #stream:Ljava/io/FileInputStream;
    :catch_381
    move-exception v25

    move-object/from16 v5, v25

    move-object/from16 v20, v21

    .end local v21           #stream:Ljava/io/FileInputStream;
    .restart local v20       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2f4

    .line 1353
    :catch_388
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_2ce

    .line 1351
    :catch_38d
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_1ce

    .line 1349
    :catch_392
    move-exception v25

    move-object/from16 v5, v25

    goto/16 :goto_19b
.end method

.method registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 14
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    const/4 v1, 0x1

    .line 918
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    if-lez v0, :cond_4f

    .line 922
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    if-eqz v0, :cond_50

    move v7, v1

    .line 923
    .local v7, alreadyRegistered:Z
    :goto_c
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 924
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "appWidgetIds"

    invoke-virtual {v8, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 925
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 928
    .local v9, token:J
    :try_start_23
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/high16 v2, 0x800

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_53

    .line 931
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    if-nez v7, :cond_4f

    .line 934
    iget-object v0, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->updatePeriodMillis:I

    int-to-long v4, v0

    .line 935
    .local v4, period:J
    const-wide/32 v0, 0x1b7740

    cmp-long v0, v4, v0

    if-gez v0, :cond_42

    .line 936
    const-wide/32 v4, 0x1b7740

    .line 938
    :cond_42
    iget-object v0, p0, Lcom/android/server/AppWidgetService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v4

    iget-object v6, p1, Lcom/android/server/AppWidgetService$Provider;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 942
    .end local v4           #period:J
    .end local v7           #alreadyRegistered:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #token:J
    :cond_4f
    return-void

    .line 922
    :cond_50
    const/4 v0, 0x0

    move v7, v0

    goto :goto_c

    .line 931
    .restart local v7       #alreadyRegistered:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #token:J
    :catchall_53
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V
    .registers 8
    .parameter "index"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    .line 882
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 883
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_30

    .line 884
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 886
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, v4}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 888
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 890
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v3, v3, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 891
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 892
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    .line 893
    iget-object v3, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 894
    iput-object v4, v2, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 896
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_30
    iget-object v3, p2, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 897
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 900
    return-void
.end method

.method removeProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 8
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x1

    .line 1568
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1569
    .local v0, N:I
    sub-int v2, v0, v5

    .local v2, i:I
    :goto_9
    if-ltz v2, :cond_27

    .line 1570
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1571
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v4, v3, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1572
    invoke-virtual {p0, v2, v3}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1569
    :cond_24
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1580
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_27
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1581
    sub-int v2, v0, v5

    :goto_2f
    if-ltz v2, :cond_47

    .line 1582
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppWidgetService$Host;

    .line 1583
    .local v1, host:Lcom/android/server/AppWidgetService$Host;
    iget-object v4, v1, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1584
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->deleteHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 1581
    :cond_44
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1587
    .end local v1           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_47
    return-void
.end method

.method saveStateLocked()V
    .registers 5

    .prologue
    .line 1139
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateTempFile()Ljava/io/File;

    move-result-object v1

    .line 1140
    .local v1, temp:Ljava/io/File;
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->savedStateRealFile()Ljava/io/File;

    move-result-object v0

    .line 1142
    .local v0, real:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 1150
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_2f

    .line 1156
    :cond_11
    :goto_11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1158
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1161
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/android/server/AppWidgetService;->writeStateToFileLocked(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1162
    const-string v2, "AppWidgetService"

    const-string v3, "Failed to persist new settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :goto_27
    return-void

    .line 1167
    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1169
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_27

    .line 1151
    :catch_2f
    move-exception v2

    goto :goto_11
.end method

.method savedStateRealFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1391
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method savedStateTempFile()Ljava/io/File;
    .registers 3

    .prologue
    .line 1386
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appwidgets.xml.tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V
    .registers 4
    .parameter "p"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 905
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 906
    return-void
.end method

.method sendInitialBroadcasts()V
    .registers 7

    .prologue
    .line 1103
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1104
    :try_start_3
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1105
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_2c

    .line 1106
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AppWidgetService$Provider;

    .line 1107
    .local v3, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v5, v3, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_29

    .line 1108
    invoke-virtual {p0, v3}, Lcom/android/server/AppWidgetService;->sendEnableIntentLocked(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1109
    invoke-static {v3}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v1

    .line 1110
    .local v1, appWidgetIds:[I
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1111
    invoke-virtual {p0, v3, v1}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1105
    .end local v1           #appWidgetIds:[I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1114
    .end local v3           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_2c
    monitor-exit v4

    .line 1115
    return-void

    .line 1114
    .end local v0           #N:I
    .end local v2           #i:I
    :catchall_2e
    move-exception v5

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v5
.end method

.method sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V
    .registers 5
    .parameter "p"
    .parameter "appWidgetIds"

    .prologue
    .line 909
    if-eqz p2, :cond_1d

    array-length v1, p2

    if-lez v1, :cond_1d

    .line 910
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "appWidgetIds"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 912
    iget-object v1, p1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 913
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 915
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method public startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;)[I
    .registers 14
    .parameter "callbacks"
    .parameter "packageName"
    .parameter "hostId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/appwidget/IAppWidgetHost;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 746
    .local p4, updatedViews:Ljava/util/List;,"Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual {p0, p2}, Lcom/android/server/AppWidgetService;->enforceCallingUid(Ljava/lang/String;)I

    move-result v1

    .line 747
    .local v1, callingUid:I
    iget-object v7, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v7

    .line 748
    :try_start_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/AppWidgetService;->lookupOrAddHostLocked(ILjava/lang/String;I)Lcom/android/server/AppWidgetService$Host;

    move-result-object v2

    .line 749
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    iput-object p1, v2, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 751
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 753
    iget-object v5, v2, Lcom/android/server/AppWidgetService$Host;->instances:Ljava/util/ArrayList;

    .line 754
    .local v5, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 755
    .local v0, N:I
    new-array v6, v0, [I

    .line 756
    .local v6, updatedIds:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v0, :cond_2d

    .line 757
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 758
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    iget v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    aput v8, v6, v3

    .line 759
    iget-object v8, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    invoke-interface {p4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 761
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_2d
    monitor-exit v7

    return-object v6

    .line 762
    .end local v0           #N:I
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    .end local v3           #i:I
    .end local v5           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v6           #updatedIds:[I
    :catchall_2f
    move-exception v8

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v8
.end method

.method public stopListening(I)V
    .registers 5
    .parameter "hostId"

    .prologue
    .line 766
    iget-object v1, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v1

    .line 767
    :try_start_3
    invoke-static {}, Lcom/android/server/AppWidgetService;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/AppWidgetService;->lookupHostLocked(II)Lcom/android/server/AppWidgetService$Host;

    move-result-object v0

    .line 768
    .local v0, host:Lcom/android/server/AppWidgetService$Host;
    if-eqz v0, :cond_13

    .line 769
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/server/AppWidgetService;->pruneHostLocked(Lcom/android/server/AppWidgetService$Host;)V

    .line 772
    :cond_13
    monitor-exit v1

    .line 773
    return-void

    .line 772
    .end local v0           #host:Lcom/android/server/AppWidgetService$Host;
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v2
.end method

.method public systemReady(Z)V
    .registers 9
    .parameter "safeMode"

    .prologue
    const/4 v6, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/android/server/AppWidgetService;->mSafeMode:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadAppWidgetList()V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService;->loadStateLocked()V

    .line 189
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 199
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 200
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    return-void
.end method

.method public unbindRemoteViewsService(ILandroid/content/Intent;)V
    .registers 9
    .parameter "appWidgetId"
    .parameter "intent"

    .prologue
    .line 489
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 492
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/content/Intent$FilterComparison;

    invoke-direct {v5, p2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 494
    .local v2, key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v1

    .line 499
    .local v1, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    if-nez v1, :cond_29

    .line 500
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "bad appWidgetId"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 511
    .end local v1           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .end local v2           #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :catchall_26
    move-exception v4

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v4

    .line 503
    .restart local v1       #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    .restart local v2       #key:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/Intent$FilterComparison;>;"
    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;

    .line 505
    .local v0, conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    invoke-virtual {v0}, Lcom/android/server/AppWidgetService$ServiceConnectionProxy;->disconnect()V

    .line 506
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 507
    iget-object v4, p0, Lcom/android/server/AppWidgetService;->mBoundRemoteViewsServices:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    .end local v0           #conn:Lcom/android/server/AppWidgetService$ServiceConnectionProxy;
    .end local v1           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :goto_3e
    monitor-exit v3

    .line 512
    return-void

    .line 509
    :cond_40
    const-string v4, "AppWidgetService"

    const-string v5, "Error (unbindRemoteViewsService): Connection not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_26

    goto :goto_3e
.end method

.method public updateAppWidgetIds([ILandroid/widget/RemoteViews;)V
    .registers 8
    .parameter "appWidgetIds"
    .parameter "views"

    .prologue
    .line 632
    if-nez p1, :cond_3

    .line 646
    :cond_2
    :goto_2
    return-void

    .line 635
    :cond_3
    array-length v3, p1

    if-eqz v3, :cond_2

    .line 638
    array-length v0, p1

    .line 640
    .local v0, N:I
    iget-object v3, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v3

    .line 641
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v0, :cond_19

    .line 642
    :try_start_d
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/server/AppWidgetService;->lookupAppWidgetIdLocked(I)Lcom/android/server/AppWidgetService$AppWidgetId;

    move-result-object v2

    .line 643
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 645
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_19
    monitor-exit v3

    goto :goto_2

    :catchall_1b
    move-exception v4

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v4
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V
    .registers 4
    .parameter "id"
    .parameter "views"

    .prologue
    .line 699
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V

    .line 700
    return-void
.end method

.method updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;Z)V
    .registers 7
    .parameter "id"
    .parameter "views"
    .parameter "isPartialUpdate"

    .prologue
    .line 706
    if-eqz p1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Provider;->zombie:Z

    if-nez v1, :cond_25

    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-boolean v1, v1, Lcom/android/server/AppWidgetService$Host;->zombie:Z

    if-nez v1, :cond_25

    .line 709
    if-nez p3, :cond_16

    iput-object p2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 712
    :cond_16
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    if-eqz v1, :cond_25

    .line 715
    :try_start_1c
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget-object v1, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    iget v2, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-interface {v1, v2, p2}, Lcom/android/internal/appwidget/IAppWidgetHost;->updateAppWidget(ILandroid/widget/RemoteViews;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    .line 723
    :cond_25
    :goto_25
    return-void

    .line 716
    :catch_26
    move-exception v1

    move-object v0, v1

    .line 719
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p1, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_25
.end method

.method public updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    .registers 12
    .parameter "provider"
    .parameter "views"

    .prologue
    .line 683
    iget-object v5, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    monitor-enter v5

    .line 684
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v4

    .line 685
    .local v4, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v4, :cond_23

    .line 686
    const-string v6, "AppWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAppWidgetProvider: provider doesn\'t exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    monitor-exit v5

    .line 696
    :goto_22
    return-void

    .line 689
    :cond_23
    iget-object v3, v4, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    .line 690
    .local v3, instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 691
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    if-ge v1, v0, :cond_38

    .line 692
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 693
    .local v2, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    invoke-virtual {p0, v2, p2}, Lcom/android/server/AppWidgetService;->updateAppWidgetInstanceLocked(Lcom/android/server/AppWidgetService$AppWidgetId;Landroid/widget/RemoteViews;)V

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 695
    .end local v2           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_38
    monitor-exit v5

    goto :goto_22

    .end local v0           #N:I
    .end local v1           #i:I
    .end local v3           #instances:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AppWidgetService$AppWidgetId;>;"
    .end local v4           #p:Lcom/android/server/AppWidgetService$Provider;
    :catchall_3a
    move-exception v6

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v6
.end method

.method updateProvidersForPackageLocked(Ljava/lang/String;)V
    .registers 23
    .parameter "pkgName"

    .prologue
    .line 1497
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1498
    .local v14, keep:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Landroid/content/Intent;

    const-string v18, "android.appwidget.action.APPWIDGET_UPDATE"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1499
    .local v12, intent:Landroid/content/Intent;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v18, v0

    const/16 v19, 0x80

    move-object/from16 v0, v18

    move-object v1, v12

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 1504
    .local v7, broadcastReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v7, :cond_4e

    const/16 v18, 0x0

    move/from16 v4, v18

    .line 1505
    .local v4, N:I
    :goto_2c
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2d
    if-ge v10, v4, :cond_135

    .line 1506
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 1507
    .local v17, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    .line 1508
    .local v5, ai:Landroid/content/pm/ActivityInfo;
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x4

    and-int v18, v18, v19

    if-eqz v18, :cond_55

    .line 1505
    :cond_4b
    :goto_4b
    add-int/lit8 v10, v10, 0x1

    goto :goto_2d

    .line 1504
    .end local v4           #N:I
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v10           #i:I
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_4e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v4, v18

    goto :goto_2c

    .line 1511
    .restart local v4       #N:I
    .restart local v5       #ai:Landroid/content/pm/ActivityInfo;
    .restart local v10       #i:I
    .restart local v17       #ri:Landroid/content/pm/ResolveInfo;
    :cond_55
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 1512
    new-instance v8, Landroid/content/ComponentName;

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .local v8, component:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->lookupProviderLocked(Landroid/content/ComponentName;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v15

    .line 1514
    .local v15, p:Lcom/android/server/AppWidgetService$Provider;
    if-nez v15, :cond_97

    .line 1515
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 1516
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1519
    :cond_97
    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/server/AppWidgetService;->parseProviderInfoXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/server/AppWidgetService$Provider;

    move-result-object v16

    .line 1520
    .local v16, parsed:Lcom/android/server/AppWidgetService$Provider;
    if-eqz v16, :cond_4b

    .line 1521
    move-object v0, v5

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1523
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1525
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1526
    .local v3, M:I
    if-lez v3, :cond_4b

    .line 1527
    invoke-static {v15}, Lcom/android/server/AppWidgetService;->getAppWidgetIds(Lcom/android/server/AppWidgetService$Provider;)[I

    move-result-object v6

    .line 1531
    .local v6, appWidgetIds:[I
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->cancelBroadcasts(Lcom/android/server/AppWidgetService$Provider;)V

    .line 1532
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->registerForBroadcastsLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    .line 1534
    const/4 v13, 0x0

    .local v13, j:I
    :goto_d5
    if-ge v13, v3, :cond_12c

    .line 1535
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1536
    .local v11, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v11

    iput-object v0, v1, Lcom/android/server/AppWidgetService$AppWidgetId;->views:Landroid/widget/RemoteViews;

    .line 1537
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    if-eqz v18, :cond_118

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    if-eqz v18, :cond_118

    .line 1539
    :try_start_100
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    move-object/from16 v18, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    move/from16 v19, v0

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lcom/android/internal/appwidget/IAppWidgetHost;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_100 .. :try_end_118} :catch_11b

    .line 1534
    :cond_118
    :goto_118
    add-int/lit8 v13, v13, 0x1

    goto :goto_d5

    .line 1540
    :catch_11b
    move-exception v18

    move-object/from16 v9, v18

    .line 1544
    .local v9, ex:Landroid/os/RemoteException;
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/AppWidgetService$Host;->callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

    goto :goto_118

    .line 1549
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v11           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_12c
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->sendUpdateIntentLocked(Lcom/android/server/AppWidgetService$Provider;[I)V

    goto/16 :goto_4b

    .line 1557
    .end local v3           #M:I
    .end local v5           #ai:Landroid/content/pm/ActivityInfo;
    .end local v6           #appWidgetIds:[I
    .end local v8           #component:Landroid/content/ComponentName;
    .end local v13           #j:I
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    .end local v16           #parsed:Lcom/android/server/AppWidgetService$Provider;
    .end local v17           #ri:Landroid/content/pm/ResolveInfo;
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1558
    const/16 v18, 0x1

    sub-int v10, v4, v18

    :goto_143
    if-ltz v10, :cond_18f

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AppWidgetService$Provider;

    .line 1560
    .restart local v15       #p:Lcom/android/server/AppWidgetService$Provider;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18c

    move-object v0, v15

    iget-object v0, v0, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_18c

    .line 1562
    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/AppWidgetService;->removeProviderLocked(ILcom/android/server/AppWidgetService$Provider;)V

    .line 1558
    :cond_18c
    add-int/lit8 v10, v10, -0x1

    goto :goto_143

    .line 1565
    .end local v15           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_18f
    return-void
.end method

.method writeStateToFileLocked(Ljava/io/File;)Z
    .registers 15
    .parameter "file"

    .prologue
    .line 1173
    const/4 v8, 0x0

    .line 1177
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_fa

    .line 1178
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v9, stream:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1179
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1180
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1183
    const/4 v10, 0x0

    const-string v11, "gs"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    const/4 v7, 0x0

    .line 1186
    .local v7, providerIndex:I
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1187
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_28
    if-ge v3, v0, :cond_69

    .line 1188
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mInstalledProviders:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AppWidgetService$Provider;

    .line 1189
    .local v6, p:Lcom/android/server/AppWidgetService$Provider;
    iget-object v10, v6, Lcom/android/server/AppWidgetService$Provider;->instances:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_66

    .line 1190
    const/4 v10, 0x0

    const-string v11, "p"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1191
    const/4 v10, 0x0

    const-string v11, "pkg"

    iget-object v12, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1192
    const/4 v10, 0x0

    const-string v11, "cl"

    iget-object v12, v6, Lcom/android/server/AppWidgetService$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1193
    const/4 v10, 0x0

    const-string v11, "p"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1194
    iput v7, v6, Lcom/android/server/AppWidgetService$Provider;->tag:I

    .line 1195
    add-int/lit8 v7, v7, 0x1

    .line 1187
    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 1199
    .end local v6           #p:Lcom/android/server/AppWidgetService$Provider;
    :cond_69
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1200
    const/4 v3, 0x0

    :goto_70
    if-ge v3, v0, :cond_9f

    .line 1201
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppWidgetService$Host;

    .line 1202
    .local v2, host:Lcom/android/server/AppWidgetService$Host;
    const/4 v10, 0x0

    const-string v11, "h"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1203
    const/4 v10, 0x0

    const-string v11, "pkg"

    iget-object v12, v2, Lcom/android/server/AppWidgetService$Host;->packageName:Ljava/lang/String;

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1204
    const/4 v10, 0x0

    const-string v11, "id"

    iget v12, v2, Lcom/android/server/AppWidgetService$Host;->hostId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1205
    const/4 v10, 0x0

    const-string v11, "h"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1206
    iput v3, v2, Lcom/android/server/AppWidgetService$Host;->tag:I

    .line 1200
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 1209
    .end local v2           #host:Lcom/android/server/AppWidgetService$Host;
    :cond_9f
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1210
    const/4 v3, 0x0

    :goto_a6
    if-ge v3, v0, :cond_eb

    .line 1211
    iget-object v10, p0, Lcom/android/server/AppWidgetService;->mAppWidgetIds:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetService$AppWidgetId;

    .line 1212
    .local v4, id:Lcom/android/server/AppWidgetService$AppWidgetId;
    const/4 v10, 0x0

    const-string v11, "g"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1213
    const/4 v10, 0x0

    const-string v11, "id"

    iget v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->appWidgetId:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1214
    const/4 v10, 0x0

    const-string v11, "h"

    iget-object v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->host:Lcom/android/server/AppWidgetService$Host;

    iget v12, v12, Lcom/android/server/AppWidgetService$Host;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1215
    iget-object v10, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    if-eqz v10, :cond_e2

    .line 1216
    const/4 v10, 0x0

    const-string v11, "p"

    iget-object v12, v4, Lcom/android/server/AppWidgetService$AppWidgetId;->provider:Lcom/android/server/AppWidgetService$Provider;

    iget v12, v12, Lcom/android/server/AppWidgetService$Provider;->tag:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1218
    :cond_e2
    const/4 v10, 0x0

    const-string v11, "g"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1210
    add-int/lit8 v3, v3, 0x1

    goto :goto_a6

    .line 1221
    .end local v4           #id:Lcom/android/server/AppWidgetService$AppWidgetId;
    :cond_eb
    const/4 v10, 0x0

    const-string v11, "gs"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1223
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1224
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f7} :catch_10e

    .line 1225
    const/4 v10, 0x1

    move-object v8, v9

    .line 1238
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #providerIndex:I
    .end local v9           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :goto_f9
    return v10

    .line 1226
    :catch_fa
    move-exception v10

    move-object v1, v10

    .line 1228
    .local v1, e:Ljava/io/IOException;
    :goto_fc
    if-eqz v8, :cond_101

    .line 1229
    :try_start_fe
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_101} :catch_10c

    .line 1234
    :cond_101
    :goto_101
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_10a

    .line 1236
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1238
    :cond_10a
    const/4 v10, 0x0

    goto :goto_f9

    .line 1231
    :catch_10c
    move-exception v10

    goto :goto_101

    .line 1226
    .end local v1           #e:Ljava/io/IOException;
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v9       #stream:Ljava/io/FileOutputStream;
    :catch_10e
    move-exception v10

    move-object v1, v10

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    goto :goto_fc
.end method
