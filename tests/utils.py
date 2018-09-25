from absl import logging

from absl.testing import absltest
from pysc2.lib import stopwatch


class TestCase(absltest.TestCase):
    """A test base class that enables stopwatch profiling."""

    def setUp(self):
        super(TestCase, self).setUp()
        stopwatch.sw.clear()
        self._sw_enabled = stopwatch.sw.enabled
        stopwatch.sw.enabled = True

    def tearDown(self):
        super(TestCase, self).tearDown()
        s = str(stopwatch.sw)
        if s:
            logging.info("Stop watch profile:\n%s", s)
        stopwatch.sw.enabled = self._sw_enabled
