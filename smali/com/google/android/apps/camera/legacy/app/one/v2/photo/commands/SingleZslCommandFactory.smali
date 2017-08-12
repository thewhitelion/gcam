.class public final Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;
.super Ljava/lang/Object;
.source "SingleZslCommandFactory.java"


# instance fields
.field private final frameAllocator:Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

.field private final imageSaver:Lcom/google/android/apps/camera/legacy/app/one/v2/imagesaver/PreProcessedImageSaver;

.field private final lifetime:Lcom/google/android/libraries/camera/async/Lifetime;

.field private final logger:Lcom/google/android/libraries/camera/debug/Logger$Factory;

.field private final oneCharacteristics$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ7C______0:Lcom/google/android/libraries/camera/framework/characteristics/CameraDeviceCharacteristics;

.field private final prefilter:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/DefaultZslRingBufferPolicy;

.field private final threshold:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureThreshold;

.field private final trace:Lcom/google/android/libraries/camera/debug/trace/Trace;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/camera/debug/trace/Trace;Lcom/google/android/libraries/camera/debug/Logger$Factory;Lcom/google/android/libraries/camera/async/Lifetime;Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/google/android/apps/camera/legacy/app/one/v2/imagesaver/PreProcessedImageSaver;Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureThreshold;Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/DefaultZslRingBufferPolicy;Lcom/google/android/libraries/camera/framework/characteristics/CameraDeviceCharacteristics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->trace:Lcom/google/android/libraries/camera/debug/trace/Trace;

    iput-object p2, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->logger:Lcom/google/android/libraries/camera/debug/Logger$Factory;

    iput-object p3, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->lifetime:Lcom/google/android/libraries/camera/async/Lifetime;

    iput-object p4, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->frameAllocator:Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    iput-object p5, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->imageSaver:Lcom/google/android/apps/camera/legacy/app/one/v2/imagesaver/PreProcessedImageSaver;

    iput-object p6, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->threshold:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureThreshold;

    iput-object p7, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->prefilter:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    iput-object p8, p0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->oneCharacteristics$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ7C______0:Lcom/google/android/libraries/camera/framework/characteristics/CameraDeviceCharacteristics;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureCommand;J)Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureCommand;
    .locals 18

    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec;->any()Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->oneCharacteristics$9HHMUR9FCTNMUPRCCKNM2RJ4E9NMIP1FC5O70SPFCDGMQPBIC4NMURJ55T7MSPA3C5MMASJ18DK62SJ1CDQ6ASJ9EDQ6IORJ7C______0:Lcom/google/android/libraries/camera/framework/characteristics/CameraDeviceCharacteristics;

    invoke-interface {v3}, Lcom/google/android/libraries/camera/framework/characteristics/CameraDeviceCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec$Requirement;->LOCKED:Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec$Requirement;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec;->withFocus(Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec$Requirement;)Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec;

    :cond_0
    new-instance v11, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/zsl/AcceptableZslImageFilter;

    invoke-direct {v11, v2}, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/zsl/AcceptableZslImageFilter;-><init>(Lcom/google/android/apps/camera/legacy/app/one/v2/autofocus/Convergence3ASpec;)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v16

    new-instance v2, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;

    new-instance v3, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/zsl/ZslImageCaptureCommand;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->logger:Lcom/google/android/libraries/camera/debug/Logger$Factory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->trace:Lcom/google/android/libraries/camera/debug/trace/Trace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->lifetime:Lcom/google/android/libraries/camera/async/Lifetime;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->frameAllocator:Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->threshold:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureThreshold;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->prefilter:Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/DefaultZslRingBufferPolicy;

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/DefaultZslRingBufferPolicy;->create(J)Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/RingBufferPolicy;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/SingleZslCommandFactory;->imageSaver:Lcom/google/android/apps/camera/legacy/app/one/v2/imagesaver/PreProcessedImageSaver;

    move-object/from16 v17, v0

    move-object/from16 v9, p1

    move-wide/from16 v14, p2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/zsl/ZslImageCaptureCommand;-><init>(Lcom/google/android/libraries/camera/debug/Logger$Factory;Lcom/google/android/libraries/camera/debug/trace/Trace;Lcom/google/android/libraries/camera/async/Lifetime;Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/FrameManager$FrameAllocator;Lcom/google/android/apps/camera/legacy/app/one/v2/photo/CaptureThreshold;Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureCommand;Lcom/google/android/apps/camera/legacy/app/one/v2/imagemanagement/frame/RingBufferPolicy;Lcom/google/android/apps/camera/legacy/app/one/v2/photo/zsl/ZslImageCaptureCommand$ZslMetadataFilter;IIJLjava/util/Set;Lcom/google/android/apps/camera/legacy/app/one/v2/imagesaver/PreProcessedImageSaver;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/apps/camera/legacy/app/one/v2/photo/commands/UsageStatsForwardingImageCaptureCommand;-><init>(Lcom/google/android/apps/camera/legacy/app/one/v2/photo/ImageCaptureCommand;IZ)V

    return-object v2
.end method