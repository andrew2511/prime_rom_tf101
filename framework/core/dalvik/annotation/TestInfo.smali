.class public interface abstract annotation Ldalvik/annotation/TestInfo;
.super Ljava/lang/Object;
.source "TestInfo.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ldalvik/annotation/TestInfo;
        level = .enum Ldalvik/annotation/TestLevel;->PARTIAL:Ldalvik/annotation/TestLevel;
        notes = ""
        purpose = ""
        status = .enum Ldalvik/annotation/TestStatus;->TBR:Ldalvik/annotation/TestStatus;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract level()Ldalvik/annotation/TestLevel;
.end method

.method public abstract notes()Ljava/lang/String;
.end method

.method public abstract purpose()Ljava/lang/String;
.end method

.method public abstract status()Ldalvik/annotation/TestStatus;
.end method

.method public abstract targets()[Ldalvik/annotation/TestTarget;
.end method
