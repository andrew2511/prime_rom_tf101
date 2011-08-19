.class public Lcom/google/android/feedback/ErrorReportAdapter;
.super Landroid/widget/BaseAdapter;
.source "ErrorReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/ErrorReportAdapter$Row;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/feedback/ErrorReportAdapter$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 0
    .parameter "context"
    .parameter "report"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {p0, p2}, Lcom/google/android/feedback/ErrorReportAdapter;->buildRows(Lcom/google/android/feedback/ExtendedErrorReport;)V

    .line 144
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 363
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;II)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 370
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 371
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 378
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V

    .line 379
    return-void
.end method

.method private addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 8
    .parameter "report"
    .parameter "fieldName"
    .parameter "labelResId"
    .parameter
    .parameter "convertType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 383
    .local p4, viewerActivity:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 384
    .local v6, c:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual {v6, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 386
    .local v3, field:Ljava/lang/reflect/Field;
    iget-object v7, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    new-instance v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    move v1, p3

    move-object v2, p1

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/feedback/ErrorReportAdapter$Row;-><init>(ILjava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Class;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method private addSectionHeader(I)V
    .locals 2
    .parameter "headerResId"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    new-instance v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    invoke-direct {v1, p1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    return-void
.end method

.method private buildRows(Lcom/google/android/feedback/ExtendedErrorReport;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    .line 271
    const v0, 0x7f050016

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 272
    const-string v0, "type"

    const v1, 0x7f05001c

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 273
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    const-string v0, "description"

    const v1, 0x7f05002a

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 276
    :cond_0
    const-string v0, "packageName"

    const v1, 0x7f05001d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 277
    const-string v0, "packageVersion"

    const v1, 0x7f05001a

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 278
    const-string v0, "packageVersionName"

    const v1, 0x7f05001b

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 279
    const-string v0, "installerPackageName"

    const v1, 0x7f05001e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 280
    const-string v0, "processName"

    const v1, 0x7f05001f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 281
    const-string v0, "time"

    const v1, 0x7f050020

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 282
    const-string v0, "systemApp"

    const v1, 0x7f050039

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 284
    const v0, 0x7f050019

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 285
    const-string v0, "device"

    const v1, 0x7f05002b

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 286
    const-string v0, "buildId"

    const v1, 0x7f05002c

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 287
    const-string v0, "buildType"

    const v1, 0x7f05002d

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 288
    const-string v0, "model"

    const v1, 0x7f05002e

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 289
    const-string v0, "product"

    const v1, 0x7f05002f

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 290
    const-string v0, "sdk_int"

    const v1, 0x7f050030

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 291
    const-string v0, "release"

    const v1, 0x7f050031

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 292
    const-string v0, "incremental"

    const v1, 0x7f050032

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 293
    const-string v0, "codename"

    const v1, 0x7f050033

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 294
    const-string v0, "board"

    const v1, 0x7f050034

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 295
    const-string v0, "brand"

    const v1, 0x7f050035

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 296
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->installedPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const-string v0, "installedPackages"

    const v1, 0x7f050036

    const-class v2, Lcom/google/android/feedback/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 299
    :cond_1
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    const-string v0, "runningApplications"

    const v1, 0x7f050037

    const-class v2, Lcom/google/android/feedback/ShowStringListActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 302
    :cond_2
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->systemLog:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "systemLog"

    const v1, 0x7f050038

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 305
    :cond_3
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->eventLog:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 306
    const-string v0, "eventLog"

    const v1, 0x7f05003a

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 308
    :cond_4
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    if-eqz v0, :cond_5

    .line 309
    const v0, 0x7f050017

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 310
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "exceptionClassName"

    const v2, 0x7f050021

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 311
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwFileName"

    const v2, 0x7f050022

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 312
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwClassName"

    const v2, 0x7f050023

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 313
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwMethodName"

    const v2, 0x7f050024

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 314
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "throwLineNumber"

    const v2, 0x7f050025

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 315
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    const-string v1, "stackTrace"

    const v2, 0x7f050026

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 318
    :cond_5
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    if-eqz v0, :cond_7

    .line 319
    const v0, 0x7f050018

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 320
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v0, v0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 321
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "activity"

    const v2, 0x7f050027

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 323
    :cond_6
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "cause"

    const v2, 0x7f050028

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 324
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    const-string v1, "info"

    const v2, 0x7f050029

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 325
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->anrStackTraces:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 326
    const-string v0, "anrStackTraces"

    const v1, 0x7f05003b

    const-class v2, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 330
    :cond_7
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    if-eqz v0, :cond_8

    .line 331
    const v0, 0x7f05003c

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 332
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "usagePercent"

    const v2, 0x7f05003d

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 333
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "durationMicros"

    const v2, 0x7f05003e

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 335
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "usageDetails"

    const v2, 0x7f05003f

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 337
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    const-string v1, "checkinDetails"

    const v2, 0x7f050040

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 341
    :cond_8
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    if-eqz v0, :cond_9

    .line 342
    const v0, 0x7f050045

    invoke-direct {p0, v0}, Lcom/google/android/feedback/ErrorReportAdapter;->addSectionHeader(I)V

    .line 343
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    const-string v1, "durationMillis"

    const v2, 0x7f050046

    const/4 v3, 0x4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 345
    iget-object v0, p1, Lcom/google/android/feedback/ExtendedErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    const-string v1, "serviceDetails"

    const v2, 0x7f050047

    const-class v3, Lcom/google/android/feedback/ShowTextActivity;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/feedback/ErrorReportAdapter;->addRow(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Class;)V

    .line 348
    :cond_9
    return-void
.end method

.method private formatElapsedTime(D)Ljava/lang/String;
    .locals 13
    .parameter "millis"

    .prologue
    const/4 v12, 0x3

    const v7, 0x15180

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v3, sb:Ljava/lang/StringBuilder;
    const-wide v5, 0x408f400000000000L

    div-double v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v4, v5

    .line 412
    .local v4, seconds:I
    const/4 v0, 0x0

    .local v0, days:I
    const/4 v1, 0x0

    .local v1, hours:I
    const/4 v2, 0x0

    .line 413
    .local v2, minutes:I
    if-le v4, v7, :cond_0

    .line 414
    div-int v0, v4, v7

    .line 415
    mul-int v5, v0, v7

    sub-int/2addr v4, v5

    .line 417
    :cond_0
    const/16 v5, 0xe10

    if-le v4, v5, :cond_1

    .line 418
    div-int/lit16 v1, v4, 0xe10

    .line 419
    mul-int/lit16 v5, v1, 0xe10

    sub-int/2addr v4, v5

    .line 421
    :cond_1
    const/16 v5, 0x3c

    if-le v4, v5, :cond_2

    .line 422
    div-int/lit8 v2, v4, 0x3c

    .line 423
    mul-int/lit8 v5, v2, 0x3c

    sub-int/2addr v4, v5

    .line 425
    :cond_2
    if-lez v0, :cond_3

    .line 426
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f050041

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 428
    :cond_3
    if-lez v1, :cond_4

    .line 429
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f050042

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 430
    :cond_4
    if-lez v2, :cond_5

    .line 431
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f050043

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 433
    :cond_5
    iget-object v5, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f050044

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 159
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 176
    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 181
    invoke-virtual {v1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f07000f

    if-eq v3, v4, :cond_9

    .line 183
    :cond_0
    const v3, 0x7f030004

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 185
    :goto_0
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    move-object p0, v0

    .line 186
    iget v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->labelResId:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v1, v2

    .line 261
    :goto_1
    return-object v1

    .line 191
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isExpandable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f070004

    if-eq v3, v4, :cond_8

    .line 193
    :cond_2
    const v3, 0x7f030001

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .line 202
    :goto_2
    const v2, 0x7f070005

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 203
    iget v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->labelResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v2, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    if-nez v2, :cond_3

    .line 208
    const v2, 0x7f07000e

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    :try_start_0
    iget v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->convertType:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    :cond_3
    :goto_3
    move-object v1, v3

    .line 261
    goto :goto_1

    .line 196
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f07000d

    if-eq v3, v4, :cond_8

    .line 197
    :cond_5
    const v3, 0x7f030003

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    .line 212
    :pswitch_0
    :try_start_1
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 213
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 256
    :catch_0
    move-exception v1

    .line 257
    const-string v2, "ErrorReportAdapter"

    const-string v4, "failed to obtain field value"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 214
    :cond_6
    :try_start_2
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 215
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 216
    :cond_7
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 222
    :pswitch_1
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 223
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 224
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v4

    .line 225
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 229
    :pswitch_2
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 230
    packed-switch v1, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_3

    .line 235
    :pswitch_4
    const v1, 0x7f050017

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 232
    :pswitch_5
    const v1, 0x7f050018

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 238
    :pswitch_6
    const v1, 0x7f05003c

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 241
    :pswitch_7
    const v1, 0x7f050045

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 247
    :pswitch_8
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 248
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/feedback/ErrorReportAdapter;->formatElapsedTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 252
    :pswitch_9
    iget-object v4, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    iget-object v1, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->report:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    .line 253
    long-to-double v4, v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/feedback/ErrorReportAdapter;->formatElapsedTime(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_8
    move-object v3, p2

    goto/16 :goto_2

    :cond_9
    move-object v2, p2

    goto/16 :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 230
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 170
    .local v0, row:Lcom/google/android/feedback/ErrorReportAdapter$Row;
    invoke-virtual {v0}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isHeader()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onListItemClick(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 393
    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mRows:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;

    .line 395
    .local v1, row:Lcom/google/android/feedback/ErrorReportAdapter$Row;
    invoke-virtual {v1}, Lcom/google/android/feedback/ErrorReportAdapter$Row;->isExpandable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->viewerActivity:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "feedback.FIELD_NAME"

    iget-object v3, v1, Lcom/google/android/feedback/ErrorReportAdapter$Row;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/google/android/feedback/ErrorReportAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
