import time


class Stopwatch:
    def __init__(self):
        self.start_time = None
        self.elapsed_time = 0
        self.running = False

    def start(self):
        if not self.running:
            self.start_time = time.time() - self.elapsed_time
            self.running = True

    def stop(self):
        if self.running:
            self.elapsed_time = time.time() - self.start_time
            self.running = False

    def reset(self):
        self.start_time = None
        self.elapsed_time = 0
        self.running = False

    def elapsed(self):
        if self.running:
            return time.time() - self.start_time
        return self.elapsed_time

    def measure_elapsed_time(self, func):
        def wrapper(*args, **kwargs):
            self.start()
            result = func(*args, **kwargs)
            self.stop()
            print(
                f"[INFO {get_current_time()}] Elapsed time for {func.__name__}: {self.elapsed()} seconds"
            )
            return result

        return wrapper
